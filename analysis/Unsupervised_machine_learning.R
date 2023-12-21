# Libraries
library(terra)
library(dplyr)
library(ggplot2)
library(MODISTools)

# Download and save LAI data for the year 2012 from MODIS using the MODISTools package
lai_2012 <- MODISTools::mt_subset(
  product = "MCD15A3H",
  lat = 46.6756,
  lon = 7.85480,
  band = "Lai_500m",
  start = "2012-01-01",
  end = "2012-12-31",
  km_lr = 100,
  km_ab = 100,
  site_name = "swiss",
  internal = TRUE,
  progress = TRUE
)
saveRDS(lai_2012, (paste0(here::here(),"./data/lai_2012.rds")))

# convert the data to raster format
r <- MODISTools::mt_to_terra(
  lai_2012,
  reproject = TRUE
)

# convert the raster to a wide dataframe
df <- as.data.frame(r, cell = TRUE)

# cluster the data
clusters <- kmeans(
  df[,-1],
  centers = 4
)

# create a map using the raster as a template
kmeans_map <- terra::rast(r, nlyr=1)

# assign the values from "clusters" to the map generate from the template
kmeans_map[df$cell] <- clusters$cluster

# save map
saveRDS(kmeans_map, (paste0(here::here(),"./data/kmeans_map.rds")))

