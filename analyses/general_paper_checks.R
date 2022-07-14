# general checks for the paper

# load packages
library(tidyverse)
library(lubridate)
library(rio)

# set url
url <- "https://shorturl.at/hiwy7"

d_pathogens <- rio::import(url, sheet = 'Full List', range = 'A1:J1514') %>%
  janitor::clean_names()

select(d_pathogens, -reference) %>%
  head()

# number of genera
unique(d_pathogens$genus) %>% length()

# unique genera with established pathogen
filter(d_pathogens, status == 'established') %>%
  pull(genus) %>%
  unique() %>%
  length()

# calculate number of pathogen species in each genera
d_genera <- group_by(d_pathogens, genus) %>%
  tally()
filter(d_genera, n == 1) %>%
  nrow()
