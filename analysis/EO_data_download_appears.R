library(appeears)
library(keyring)

source(paste0(here::here(),"./R/Download_EO_data_appears.R"))

# Query the appeears API and process
# data in batches - this function
# requires an active API session/login
rs_request_batch(
  request = task_nbar,
  workers = 10,
  user = "earth_data_manuel",
  path = paste0(here::here(),"./data-raw"),
  verbose = TRUE,
  time_out = 28800
)
