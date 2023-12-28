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

saveRDS(validation_selection, (paste0(here::here(),"./data/validation_random_selection.rds")))
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

saveRDS(train, (paste0(here::here(),"./data/training_data.rds")))
saveRDS(test, (paste0(here::here(),"./data/test_data.rds")))


### Model structure and workflow
# load the parsnip package for tidy machine learning modelling and workflows to manage workflows
library(parsnip)
library(workflows)

# specify our model structure the model to be used and the type of task we want to evaluate
model_settings <- parsnip::boost_tree(
  trees = 50,
  min_n = tune(),
  tree_depth = tune(),
  # learn_rate = tune()
) |>
  set_engine("xgboost") |>
  set_mode("classification")

# create a workflow compatible with the {tune} package which combines model settings with the desired
# model structure (data / formula)
xgb_workflow <- workflows::workflow() |>
  add_formula(as.factor(LC1) ~ .) |>
  add_model(model_settings)

print(xgb_workflow)

### Hyperparameter settings

# load the dials package
# responsible for (hyper) parameter
# sampling schemes to tune
# parameters (as extracted)
# from the model specifications
library(tune)
library(dials)

hp_settings <- dials::grid_latin_hypercube(
  tune::extract_parameter_set_dials(xgb_workflow),
  size = 3
)


### Parameter estimation and cross-validation

# set the folds (division into different) cross-validation training datasets
folds <- rsample::vfold_cv(train, v = 3)

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

# select the best model based upon
# the root mean squared error
xgb_best <- tune::select_best(
  xgb_results,
  metric = "roc_auc"
)

# cook up a model using finalize_workflow
# which takes workflow (model) specifications
# and combines it with optimal model
# parameters into a model workflow
xgb_best_hp <- tune::finalize_workflow(
  xgb_workflow,
  xgb_best
)

print(xgb_best_hp)
