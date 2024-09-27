#### Preamble ####
# Purpose: Simulates of data
# Author: Yi Tang
# Date: 25 Sep 2024
# Contact: zachary.tang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
library(dplyr)

# Set seed for reproducibility
set.seed(1007613726)

# Simulate dataset
data <- data.frame(
  id = 1:1000, # Unique row identifier
  REPORT_YEAR = sample(2014:2023, 1000, replace = TRUE), # Year crime was reported
  CATEGORY = rep("Crimes Against the Person", 1000), # Category fixed to Crimes Against the Person
  SUBTYPE = sample(c("Assault", "Sexual Violation", "Other", "Robbery"), 1000, replace = TRUE), # Subtype
  ASSAULT_SUBTYPE = sample(c("Assault Peace Officer", "Assault Resist Arrest", "Other", "N/A"), 1000, replace = TRUE), # Assault subtypes or N/A
  SEX = sample(c("F", "M", "U"), 1000, replace = TRUE), # Sex of identified victim
  AGE_GROUP = sample(c("Adult", "Child", "Youth", "Unknown"), 1000, replace = TRUE), # Age group of identified victim
  AGE_COHORT = sample(c("<12", "12 to 17", "18 to 24", "25 to 34", "35 to 44", "45 to 54", "55 to 64", "65+", "Unknown"), 1000, replace = TRUE), # Age cohort
  COUNT = sample(1:500, 1000, replace = TRUE) # Count of victims
)

# Display the first few rows of the simulated dataset
head(data)

# Summarize data to inspect the structure
summary(data) 

# Save data#
write.csv(data, "data/sim_data/sim_crime_data.csv")
