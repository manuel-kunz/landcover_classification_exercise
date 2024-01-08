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
saveRDS(validation_sites, (paste0(here::here(),"./data/validation_sites.rds")))

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
set.seed(1)
validation_selection <- validation_selection |>
  dplyr::slice_sample(n = 150, by = LC1)

library(leaflet)
palcol <- colorFactor(
  c('#8dd3c7','#ffffb3','#bebada','#fb8072','#80b1d3','#fdb462','#b3de69','#fccde5','#d9d9d9','#bc80bd'),
  domain = 1:10,
  na.color = "transparent"
)

leaflet() |>
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") |>
  addProviderTiles(providers$Esri.WorldTopoMap, group = "World Topo") |>
  addTiles() |>
  addCircleMarkers(
    data = validation_selection,
    lng = ~lon,
    lat = ~lat,
    color = ~palcol(LC1),
    radius = 0.05,
    opacity = 1,
    fillOpacity = 1,
    group = "Validation sites"
  ) |>
  addLayersControl(
    baseGroups = c("World Imagery","World Topo"),
    position = "topleft",
    options = layersControlOptions(collapsed = FALSE),
    overlayGroups = c("Validation Sites")
  ) |>
  addLegend(
    colors = palcol(1:10),
    values = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
    title = "cluster",
    labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  )

saveRDS(validation_selection, (paste0(here::here(),"./data/validation_selection.rds")))

# split validation selection by land cover type into a nested list, for easier processing later on
validation_selection <- validation_selection |>
  dplyr::group_by(LC1) |>
  dplyr::group_split()


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
library(tidyr)
# create a data split across land cover classes
ml_df_split <- ml_df |>
  rsample::initial_split(
    strata = LC1,
    prop = 0.8
  )

# select training and testing data based on this split
library(rsample)
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
  min_n = tune(),
  tree_depth = tune(),
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

set.seed(150)
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
confusion_matrix <- caret::confusionMatrix(
  reference = as.factor(test$LC1),
  data = as.factor(test_results$.pred_class)
)
saveRDS(confusion_matrix, (paste0(here::here(),"./data/confusion_matrix.rds")))

confusion_matrix

