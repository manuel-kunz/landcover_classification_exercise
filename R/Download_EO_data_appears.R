task_nbar <- lapply(validation_selection, function(x){

  # loop over all list items (i.e. land cover classes)
  base_query <- x |>
    dplyr::rowwise() |>
    do({
      data.frame(
        task = paste0("nbar_lc_",.$LC1),
        subtask = as.character(.$pixelID),
        latitude = .$lat,
        longitude = .$lon,
        start = "2012-01-01",
        end = "2012-12-31",
        product = "MCD43A4.061",
        layer = paste0("Nadir_Reflectance_Band", 1:4)
      )
    }) |>
    dplyr::ungroup()

  # build a task JSON string
  task <- rs_build_task(
    df = base_query
  )

  # return task
  return(task)
})
