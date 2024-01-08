library(appeears)
library(keyring)
library(tidyr)
library(dplyr)

validation_selection <- readRDS(here::here("./data/validation_selection.rds"))

source(here::here("./R/Download_EO_data_appears.R"))

# Query the appeears API and process
# data in batches - this function
# requires an active API session/login
rs_request_batch(
  request = task_nbar,
  workers = 10,
  user = "earth_data_manuel",
  path = (here::here("./data-raw")),
  verbose = TRUE,
  time_out = 28800
)
