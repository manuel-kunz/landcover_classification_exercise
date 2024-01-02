### Libraries
library(terra)
library(dplyr)
library(ggplot2)
library(patchwork)
library(MODISTools)
library(appeears)
library(vroom)
library(rsample)
library(parsnip)
library(workflows)
library(tune)
library(dials)
library(xgboost)
library(stringr)

### Validation sites
# Read the validation sites from Fritz et al. 2017 straight from Zenodo.org
validation_sites <- readr::read_csv(
  "https://zenodo.org/record/6572482/files/Global%20LULC%20reference%20data%20.csv?download=1"
)

# filter out data by competition, coverage, percentage and latitude
validation_selection <- validation_sites |>
  dplyr::filter(
    (competition == 4 | competition == 1),
    perc1 > 80,
    lat > 0
  )
saveRDS(validation_selection, (paste0(here::here(),"./data/validation_filtered.rds")))

# the above selection includes all data but we now subsample to 150 random locations
# per (group_by()) land cover class (LC1) set a seed for reproducibilty
set.seed(0)

validation_selection <- validation_selection |>
  dplyr::slice_sample(n = 150, by = LC1)

# split validation selection by land cover type into a nested list, for easier processing later on
validation_selection <- validation_selection |>
  dplyr::group_by(LC1) |>
  dplyr::group_split()

saveRDS(validation_selection, (paste0(here::here(),"./data/validation_selection.rds")))
###################################################################################################
### Download appeears data
library(appeears)
library(keyring)

# import the function that downloads the data
source(paste0(here::here(),"./R/Download_EO_data_appears.R"))

# Query the appeears API and process data in batches
rs_request_batch(
  request = task_nbar,
  workers = 10,
  user = "earth_data_manuel",
  path = paste0(here::here(),"./data-raw"),
  verbose = TRUE,
  time_out = 28800
)
###################################################################################################

# list all MCD43A4 files
files <- list.files(
  paste0(here::here(),"./data-raw"),
  glob2rx("*MCD43A4-061-results*"),
  recursive = TRUE,
  full.names = TRUE
)

# read in the data and set all fill values (>=32767) to NA
nbar <- vroom::vroom(files)
nbar[nbar >= 32767] <- NA

# retain the required data only and convert to a wide format
nbar_wide <- nbar |>
  dplyr::select(
    Category,
    ID,
    Date,
    Latitude,
    Longitude,
    starts_with("MCD43A4_061_Nadir")
  ) |>
  tidyr::pivot_wider(
    values_from = starts_with("MCD43A4_061_Nadir"),
    names_from = Date
  )

# split out only the site name, and land cover class from the selection of validation sites
sites <- validation_selection |>
  dplyr::bind_rows() |>
  dplyr::select(
    pixelID,
    LC1
  ) |>
  dplyr::rename(
    Category = "pixelID"
  )

# combine the NBAR and land-use land-cover labels by location id (Category)
ml_df <- left_join(sites, nbar_wide) |>
  dplyr::select(
    LC1,
    contains("band")
  )

###############################################################################
### Model training
# create a data split across land cover classes
ml_df_split <- ml_df |>
  rsample::initial_split(
    strata = LC1,
    prop = 0.8
  )

# select training and testing data based on this split
train <- rsample::training(ml_df_split)
test <- rsample::testing(ml_df_split)

saveRDS(train, (paste0(here::here(),"./data/training_data_original.rds")))
saveRDS(test, (paste0(here::here(),"./data/test_data_original.rds")))


### Model structure and workflow
# load the parsnip package for tidy machine learning modelling and workflows to manage workflows
library(parsnip)
library(workflows)

# specify our model structure the model to be used and the type of task we want to evaluate
model_settings <- parsnip::boost_tree(
  trees = 50,
  #mtry = 2,
  min_n = tune(),
  tree_depth = tune(),
  #learn_rate = 0.01
) |>
  set_engine("xgboost") |>
  set_mode("classification")

print(model_settings)
saveRDS(model_settings, (paste0(here::here(),"./data/model_settings.rds")))
# create a workflow compatible with the {tune} package which combines model settings with the desired
# model structure (data / formula)
xgb_workflow <- workflows::workflow() |>
  add_formula(as.factor(LC1) ~ .) |>
  add_model(model_settings)

print(xgb_workflow)
saveRDS(xgb_workflow, (paste0(here::here(),"./data/xgb_workflow.rds")))

### Hyperparameter settings

# load the dials package
# responsible for (hyper) parameter
# sampling schemes to tune
# parameters (as extracted)
# from the model specifications
library(tune)
library(dials)

set.seed(0)

hp_settings <- dials::grid_latin_hypercube(
  tune::extract_parameter_set_dials(xgb_workflow),
  size = 5
)
print(hp_settings)

saveRDS(hp_settings, (paste0(here::here(),"./data/hp_settings.rds")))

### Parameter estimation and cross-validation

# set the folds (division into different) cross-validation training datasets
folds <- rsample::vfold_cv(train, v = 3)
saveRDS(folds, (paste0(here::here(),"./data/folds.rds")))

# optimize the model (hyper) parameters using the:
# 1. workflow (i.e. model)
# 2. the cross-validation across training data
# 3. the (hyper) parameter specifications
# all data are saved for evaluation
xgb_results <- tune::tune_grid(
  xgb_workflow,
  resamples = folds,
  grid = hp_settings,
  control = tune::control_grid(save_pred = TRUE)
)

saveRDS(xgb_results, (paste0(here::here(),"./data/xgb_results.rds")))

# select the best model based upon
# the root mean squared error
xgb_best <- tune::select_best(
  xgb_results,
  metric = "roc_auc"
)
print(xgb_best)
saveRDS(xgb_best, (paste0(here::here(),"./data/xgb_best.rds")))

# cook up a model using finalize_workflow
# which takes workflow (model) specifications
# and combines it with optimal model
# parameters into a model workflow
xgb_best_hp <- tune::finalize_workflow(
  xgb_workflow,
  xgb_best
)

saveRDS(xgb_best_hp, (paste0(here::here(),"./data/xgb_best_hp.rds")))


print(xgb_best_hp)


# train a final (best) model with optimal
# hyper-parameters
xgb_best_model <- fit(xgb_best_hp, train)
saveRDS(xgb_best_model, (paste0(here::here(),"./data/xgb_best_model.rds")))

### Model evaluation
# run the model on our test data
# using predict()
test_results <- predict(xgb_best_model, test)
print(test_results)


# load the caret library to
# access confusionMatrix functionality
library(caret)

# use caret's confusionMatrix function to get
# a full overview of metrics
caret::confusionMatrix(
  reference = as.factor(test$LC1),
  data = as.factor(test_results$.pred_class)
)


### Model scaling
kmeans_map <- readRDS(paste0(here::here(),"./data/kmeans_map.rds"))

# We can define an appeears
# download task using a simple
# dataframe and a map from which
# an extent is extracted
task_df <- data.frame(
  task = "raster_download",
  subtask = "swiss",
  start = "2012-01-01",
  end = "2012-12-31",
  product = "MCD43A4.061",
  layer = paste0("Nadir_Reflectance_Band", 1:4)
)

# build the area based request/task
# using the extent of our previous
# kmeans map, export all results
# as geotiff (rather than netcdf)
task <- rs_build_task(
  df = task_df,
  roi = kmeans_map,
  format = "geotiff"
)

# request the task to be executed
# with results stored in a
# temporary location (can be changed)
rs_request(
  request = task,
  user = "earth_data_manuel",
  transfer = TRUE,
  path = paste0(here::here(),"./data-raw/model_scaling"),
  verbose = TRUE
)

# Model execution
files <- list.files(
  paste0(here::here(),"./data-raw/model_scaling"),
  "*Reflectance*",
  recursive = TRUE,
  full.names = TRUE
)

# load this spatial data to run the model
# spatially
swiss_multispec_data <- terra::rast(files)

# renaming data
# the model only works when variable names
# are consistent we therefore rename them
band_names <- data.frame(
  name = names(swiss_multispec_data)
) |>
  mutate(
    date = as.Date(substr(name, 40, 46), format = "%Y%j"),
    name = paste(substr(name, 1, 35), date, sep = "_"),
    name = gsub("\\.","_", name)
  )

# reassign the names of the terra image stack
names(swiss_multispec_data) <- band_names$name

# return probabilities, where each class is
# associated with a layer in an image stack
# and the probabilities reflect the probabilities
# of the classification for said layer
lulc_probabilities <- terra::predict(
  swiss_multispec_data,
  xgb_best_model,
  type = "prob"
)

saveRDS(lulc_probabilities, (paste0(here::here(),"./data/lulc_probabilities.rds")))
lulc_probabilities <- readRDS(paste0(here::here(),"./data/lulc_probabilities.rds"))

ggplot() +
  tidyterra::geom_spatraster(data = lulc_probabilities) +
  scale_fill_viridis_c(
    na.value = NA,
    name = "Class probabilities",
    option = "magma"
  ) +
  scale_x_continuous(breaks = seq(-180, 180, 2)) +
  theme_bw() +
  theme(
    legend.position = "bottom"
  ) +
  facet_wrap(~lyr)


# LULC map
# generate the map by selecting maximum probabilities
# from the model output
lulc_map <- terra::app(lulc_probabilities, which.max)

classes <- c(
  "Tree Cover",
  "Shrub Cover",
  "Herbaceous Vegetation & Grassland",
  "Cultivated and Managed",
  "Mosaic: Managed & Natural Vegetation",
  "Regularly Flooded & Wetland",
  "Urban & Built Up",
  "Snow and Ice",
  "Barren",
  "Open Water"
)

# set te colour scale manually
palcol <- colorFactor(
  c(
    "#05450a",
    "#78d203",
    "#009900",
    "#c24f44",
    "#ff6d4c",
    "#27ff87",
    "#a5a5a5",
    "#69fff8",
    "#f9ffa4",
    "#1c0dff"
  ),
  na.color = NA,
  domain = 1:10
)

# build the leaflet map
library(leaflet)
leaflet() |>
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") |>
  addProviderTiles(providers$Esri.WorldTopoMap, group = "World Topo") |>
  addRasterImage(
    lulc_map,
    colors = palcol,
    opacity = 0.8,
    method = "ngb",
    group = "XGBOOST"
  ) |>
  addLayersControl(
    baseGroups = c("World Imagery","World Topo"),
    position = "topleft",
    options = layersControlOptions(collapsed = FALSE),
    overlayGroups = c("XGBOOST", "MODIS MCD12Q1")
  ) |>
  hideGroup("MODIS MCD12Q1") |>
  addLegend(
    colors = palcol(1:10),
    values = 1:10,
    labels = classes,
    title = "Land-Use and Land-Cover class"
  )

