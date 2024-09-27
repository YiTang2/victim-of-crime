#### Preamble ####
# Purpose: Tests the data
# Author: Yi Tang
# Date: 25 Sep 2024
# Contact: zachary.tang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
sim_data <- read.csv("data/sim_data/sim_crime_data.csv")
sim_data$REPORT_YEAR |> min() == 2014
sim_data$REPORT_YEAR |> max() == 2023

###validate unique values in the 'SEX' column###

sim_data$SEX |>
  unique() == c("M", "F", "U")

###validate count values are non-negative###
all(sim_data$COUNT >= 0)
