# This repository contains the bacterial human pathogen dataset compiled by Bartlett _et al._ 2022

## Linked publication and DOIs

This repository contains all the data and code to recreate the analyses and figures in the following manuscript:

**A comprehensive list of bacterial pathogens infecting humans**. 2022. Abigail Bartlett, Daniel Padfield, Luke Lear, Richard Bendall and Michiel Vos. Microbiology. DOI: 10.1099/mic.0.001269

This repository has been archived on Zenodo: [![DOI](https://zenodo.org/badge/510108514.svg)](https://zenodo.org/badge/latestdoi/510108514) 

## Outline of dataset

Through combining a pragmatic definition of pathogenicity with an extensive search strategy, we report 1513 bacterial pathogens known to infect humans described pre-2021. Of these, 73% were regarded as established (have infected at least three persons in three or more references) and 27% as putative (less than three known cases). Pathogen species belong to 10 Phyla and 24 Classes scattered throughout the bacterial phylogeny. 

## Downloading the dataset

### For general use

- The dataset can be downloaded using the following [link](https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/raw/master/data/bacteria_human_pathogens.xlsx). Information of what the different sheets are and what the columns mean in each sheet can be found [here](https://htmlpreview.github.io/?https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/blob/master/analyses/human_pathogen_tables.html)
- The file **data/bacteria_human_pathogens.xlsx** is the **Data S1** in the Microbiology article.

There are seven sheets in the Excel file:

- Tab 1 Taylor et al. Taylor et al. reported 538 bacterial pathogens in 2001. We took this list as a starting point, and added year of description for each species, removed not validly described species and checked for name changes using the ‘List of Prokaryotic names with Standing in Nomenclature’ from LPSN. After checking, there were 528 human pathogens that met our definition of a pathogen.
- Tab 2 Munson and Carroll. Three papers published by Munson and Carroll compiled new bacterial species associated with humans described in the years 2012 to 2019, from which all species meeting our definitions were taken. From these papers, 85 species met our definitions of a bacterial human pathogen.
- Tab 3 IJSEM. We screened new species published in the International Journal of Systematic and Evolutionary Microbiology and the bimonthly published series “List of new names and new combinations previously effectively, but not validly, published” in the same journal which lists species described in other journals. We used this approach to find newly described pathogen species in the period 1997-2011 and 2020. Using this approach, 346 species met our definitions of a bacterial human pathogen.
- Tab 4 Google Scholar. We performed ad hoc searches using Google Scholar, limiting our searches to peer-reviewed literature in the English language. We did not use mentions of human infection without a primary reference. Using this approach, 260 species met our definitions of a bacterial human pathogen.
- Tab 5 Shaw et al. The pathogen species identified from approaches 1-4 were compared with the list by Shaw et al. resulting in an additional 409 species of which 294 met our criteria
- Tab 6 Full List. The complete list of all bacterial human pathogens which also includes the higher taxonomy for each pathogen (derived using taxize).
- Tab 7 Removed. Information on bacterial species removed from the lists from Taylor et al. and Shaw et al.

### Specifically in R

- The whole list with higher taxonomy can be downloaded using the code `rio::import("https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/raw/master/data/bacteria_human_pathogens.xlsx", sheet = 'Tab 6 Full List', range = 'A1:J1514')`. Other methods to download other parts of the Excel spreadsheet directly in R can be found [here](https://htmlpreview.github.io/?https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/blob/master/analyses/human_pathogen_tables.html)

## Reproducing figures in the manuscript

- Examples on how to access each sheet of the dataset through R are available [here](https://htmlpreview.github.io/?https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/blob/master/analyses/human_pathogen_tables.html).
- Figure 2, 3 and Table 1 can be recreated from the workthrough [here](https://htmlpreview.github.io/?https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/blob/master/analyses/pathogens_across_taxa.html).
- The code to visualise the phylogenetic distribution of pathogens and the estimation of phylogenetic signal can be seen [here](https://htmlpreview.github.io/?https://github.com/padpadpadpad/bartlett_et_al_2022_human_pathogens/blob/master/analyses/pathogen_phylogeny.html).
