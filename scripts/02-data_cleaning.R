#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers
# Author: Yi Tang
# Date: 25 Sep 2024
# Contact: zachary.tang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Data cleaning and transformation ####

raw_data <- read_csv("data/raw_data/raw_crime_data.csv")

# Load raw plane data from specified directory
cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(report_year, subtype, sex, age_group, count) |>
  mutate(sex = case_when(sex == "M" ~ "Male", sex == "F" ~ "Female", sex == "U" ~ "Unsure")) |>
  rename(crime_subtype = subtype) |>
  tidyr::drop_na()

#### Export cleaned data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")

