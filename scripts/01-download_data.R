#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("police-annual-statistical-report-victims-of-crime")

# get all resources for this package
resources <- list_package_resources("police-annual-statistical-report-victims-of-crime")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c("csv", "geojson"))

# load the first datastore resource as a sample
raw_data <- filter(datastore_resources, row_number() == 1) %>% get_resource()



#### Export and Save raw data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write.csv(raw_data, "data/raw_data/raw_crime_data.csv")
