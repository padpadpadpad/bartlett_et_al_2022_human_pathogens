# This repository contains the bacterial human pathogen dataset compiled by Bartlett _et al._ 2022

## Outline of dataset

Through combining a pragmatic definition of pathogenicity with an extensive search strategy, we report 1513 bacterial pathogens known to infect humans described pre-2021. Of these, 73% were regarded as established (have infected at least three persons in three or more references) and 27% as putative (less than three known cases). Pathogen species belong to 10 Phyla and 24 Classes scattered throughout the bacterial phylogeny. 

## Downloading the dataset

### For general use

- The dataset can be downloaded using the following [link](https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/raw/master/data/bacteria_human_pathogens.xlsx)

### Specifically in R

- The whole list with higher taxonomy can be downloaded using the code `rio::import(https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/raw/master/data/bacteria_human_pathogens.xlsx, sheet = 'Full List', range = 'A1:J1514')`. Other methods to download other parts of the Excel spreadsheet directly in R can be found [here](https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/blob/master/analyses/human_pathogen_tables.pdf)
