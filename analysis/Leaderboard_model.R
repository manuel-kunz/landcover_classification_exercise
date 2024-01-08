# Libraries
library(dplyr)
library(tidyr)
library(vroom)
library(rsample)
library(parsnip)
library(workflows)
library(tune)
library(dials)
library(xgboost)
library(stringr)

### Training data

training_data <- readRDS(paste0(here::here(),"./data/training_data.rds"))

### Model setup

##Model structure and workflow
# load the parsnip package for tidy machine learning modelling and workflows to manage workflows
library(parsnip)
library(workflows)

# specify our model structure the model to be used and the type of task we want to evaluate
model_settings <- readRDS(here::here("./data/model_settings_improved_II.rds"))

# create a workflow compatible with the {tune} package which combines model settings with the desired
# model structure (data / formula)
xgb_workflow <- readRDS(here::here("./data/xgb_workflow_improved_II.rds"))


### Hyperparameter settings

# load the dials package
# responsible for (hyper) parameter
# sampling schemes to tune
# parameters (as extracted)
# from the model specifications
library(tune)
library(dials)


hp_settings <- readRDS(here::here("./data/hp_settings_improved_II.rds"))


### Parameter estimation and cross-validation

# set the folds (division into different) cross-validation training datasets
folds <- rsample::vfold_cv(training_data, v = 10)


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

# train a final (best) model with optimal
# hyper-parameters
training_data$pixelID <- NULL
training_data$lat <- NULL
training_data$lon <- NULL
xgb_best_model <- fit(xgb_best_hp, training_data)


### Model evaluation
# import test data
test_data <- readRDS(paste0(here::here(),"./data/test_data.rds"))
print(test_data)

# run the model on our test data
# using predict()
test_results <- predict(xgb_best_model, test_data)
print(test_results)

colnames(test_results) <- "lulc_class"


write.csv(test_results, file = here::here("./data/manuel-kunz_results.csv"), row.names = FALSE, quote = FALSE)

