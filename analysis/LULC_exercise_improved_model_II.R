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

### Model setup
# specify our model structure the model to be used and the type of task we want to evaluate
model_settings_improved <- parsnip::boost_tree(
  trees = tune(),
  mtry = 2,
  min_n = tune(),
  tree_depth = tune(),
) |>
  set_engine("xgboost") |>
  set_mode("classification")

print(model_settings_improved)
saveRDS(model_settings_improved, (paste0(here::here(),"./data/model_settings_improved_II.rds")))

# create a workflow compatible with the {tune} package which combines model settings with the desired
# model structure (data / formula)
xgb_workflow_improved <- workflows::workflow() |>
  add_formula(as.factor(LC1) ~ .) |>
  add_model(model_settings_improved)

print(xgb_workflow_improved)
saveRDS(xgb_workflow_improved, (paste0(here::here(),"./data/xgb_workflow_improved_II.rds")))

### Hyperparameter settings

# load the dials package
# responsible for (hyper) parameter
# sampling schemes to tune
# parameters (as extracted)
# from the model specifications
library(tune)
library(dials)

set.seed(180)

hp_settings_improved <- dials::grid_latin_hypercube(
  tune::extract_parameter_set_dials(xgb_workflow_improved),
  size = 10
)
print(hp_settings_improved)

saveRDS(hp_settings_improved, (paste0(here::here(),"./data/hp_settings_improved_II.rds")))

### Parameter estimation and cross-validation

# set the folds (division into different) cross-validation training datasets
set.seed(180)
folds <- rsample::vfold_cv(train, v = 10)


# optimize the model (hyper) parameters using the:
# 1. workflow (i.e. model)
# 2. the cross-validation across training data
# 3. the (hyper) parameter specifications
# all data are saved for evaluation
xgb_results_improved <- tune::tune_grid(
  xgb_workflow_improved,
  resamples = folds,
  grid = hp_settings_improved,
  control = tune::control_grid(save_pred = TRUE)
)

saveRDS(xgb_results_improved, (paste0(here::here(),"./data/xgb_results_improved_II.rds")))

# select the best model based upon
# the root mean squared error
xgb_best_improved <- tune::select_best(
  xgb_results_improved,
  metric = "roc_auc"
)
print(xgb_best_improved)

# cook up a model using finalize_workflow
# which takes workflow (model) specifications
# and combines it with optimal model
# parameters into a model workflow
xgb_best_hp_improved <- tune::finalize_workflow(
  xgb_workflow_improved,
  xgb_best_improved
)
saveRDS(xgb_best_hp_improved, (paste0(here::here(),"./data/xgb_best_hp_improved_II.rds")))
# train a final (best) model with optimal
# hyper-parameters
xgb_best_model_improved <- fit(xgb_best_hp_improved, train)


### Model evaluation

# import test data
test_data <- readRDS(paste0(here::here(),"./data/test_data_original.rds"))
print(test_data)

# run the model on our test data
# using predict()
test_results <- predict(xgb_best_model_improved, test_data)
print(test_results)


# load the caret library to
# access confusionMatrix functionality
library(caret)

# use caret's confusionMatrix function to get
# a full overview of metrics
confusion_matrix_improved <- caret::confusionMatrix(
  reference = as.factor(test_data$LC1),
  data = as.factor(test_results$.pred_class)
)
confusion_matrix_improved
saveRDS(confusion_matrix_improved, here::here("./data/confusion_matrix_improved_II.rds"))
