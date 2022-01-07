###########################
## Grid project
###########################

library(dplyr)

data_set_gbif <- readr::read_csv("./data-raw/metadata of grid systems_dataset.csv")


Test_1 <- data_set_gbif |>
  summarise(across(
    .cols = c(grid_ID, country, CRS_code, gridResolutionX, gridResolutionY, gridResolutionUnit, gridExtent),
    .fns = ~is.na(.x) && N/A && tbd
  ))


Test_2 <- data_set_gbif |>
  select(c(grid_ID, country, CRS_code, gridResolutionX, gridResolutionY, gridResolutionUnit, gridExtent))
