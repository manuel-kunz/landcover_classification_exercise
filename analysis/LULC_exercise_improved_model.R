### Training data

training_data <- readRDS(paste0(here::here(),"./data/training_data.rds"))

training_data$pixelID <- NULL
training_data$lat <- NULL
training_data$lon <- NULL


### Model setup

##Model structure and workflow
# load the parsnip package for tidy machine learning modelling and workflows to manage workflows
library(parsnip)
library(workflows)

# specify our model structure the model to be used and the type of task we want to evaluate
model_settings <- parsnip::boost_tree(
  trees = 50,
  mtry = 2,
  min_n = tune(),
  tree_depth = tune(),
  #learn_rate = 0.01
) |>
  set_engine("xgboost") |>
  set_mode("classification")

print(model_settings)
#saveRDS(model_settings, (paste0(here::here(),"./data/model_settings.rds")))

# create a workflow compatible with the {tune} package which combines model settings with the desired
# model structure (data / formula)
xgb_workflow <- workflows::workflow() |>
  add_formula(as.factor(LC1) ~ .) |>
  add_model(model_settings)

print(xgb_workflow)
#saveRDS(xgb_workflow, (paste0(here::here(),"./data/xgb_workflow.rds")))

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
  size = 10
)
print(hp_settings)

#saveRDS(hp_settings, (paste0(here::here(),"./data/hp_settings.rds")))

### Parameter estimation and cross-validation

# set the folds (division into different) cross-validation training datasets
folds <- rsample::vfold_cv(training_data, v = 3)
#saveRDS(folds, (paste0(here::here(),"./data/folds.rds")))

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

#saveRDS(xgb_results, (paste0(here::here(),"./data/xgb_results.rds")))

# select the best model based upon
# the root mean squared error
xgb_best <- tune::select_best(
  xgb_results,
  metric = "roc_auc"
)
print(xgb_best)

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
xgb_best_model <- fit(xgb_best_hp, training_data)


### Model evaluation

# import test data
test_data <- readRDS(paste0(here::here(),"./data/test_data.rds"))
print(test_data)

# run the model on our test data
# using predict()
test_results <- predict(xgb_best_model, test_data)
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

