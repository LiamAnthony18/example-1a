# load libraries
library(lubridate)
library(dplyr)
library(tidyr)
library(ggplot2)

# read data file
raw <- read.csv("Raw")
detectors <- read.csv("data/Raw/portaldetectors.csv")
stations <- read.csv("data/Raw/portalstations.csv")
raw_data <- read.csv("data/Raw/ramp-data-1033-2022-06-30 00_00_00-07_00-2022-07-05 00_00_00-07_00.csv")

data <- pivot_longer(raw_data, cols =2:8, names_to = "metric")
Going_data <- data
Going_data$start_time <-ymd_hms(Going_data$start_time, tz = "America/Los_Angeles")


                     
