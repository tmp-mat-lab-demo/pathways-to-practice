# written by K. Garner and Georgia Marsh, 2020
# this code reads in the DTI data, tidies it, plots boxplot and qqplots to 
# detect outliers and determine normality. We then remove outliers and save the
# remaining data as a csv file.

rm(list=ls())

# set working directory to current location
# install.packages("rstudioapi")  # uncomment and run if you don't already have this package installed
setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) # set working directory to the location of this file

# load packages and source data-wrangling functions
# --------------------------------------------------------------------------------
# install.packages("tidyverse")  # uncomment and run if you don't have tidyverse 
# installed already
library(tidyverse)
source("KG_data-wrangling.R")
source("R_rainclouds.R")

# load data
# --------------------------------------------------------------------------------
fpath <- '~/Dropbox/QBI/pathways-to-practice/dti-data/' # filepath to where the data lives
tracts <- list(c("Precentral_gyrus_Left", "Middle_Frontal_gyrus_Left"), # amend this to contain which tracts you seek
               c("Supplementary_motor_area_Left", "Rolandic_Operculum_Left"))  # has to be written exactly as is written in the list file
sub.data <- GetDTIData(fpath, tracts)

# 1. tidy dataframe up
# --------------------------------------------------------------------------------
# chapter 15 of https://r4ds.had.co.nz/factors.html will help you here as will the commands View() and head()


# 2. basic data check
# --------------------------------------------------------------------------------
# this will help you as a start https://rstudio-education.github.io/tidyverse-cookbook/transform-tables.html

