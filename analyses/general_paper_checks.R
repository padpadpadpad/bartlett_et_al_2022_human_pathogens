# general checks for the paper

# load packages
library(tidyverse)
library(lubridate)
library(rio)

d_pathogens <- readxl::read_excel(
  'data/bacteria_human_pathogens.xlsx',
  sheet = 'Tab 6 Full List',
  range = 'A1:J1514'
) %>%
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
