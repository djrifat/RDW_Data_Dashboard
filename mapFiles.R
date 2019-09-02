# Created by Daniël Jrifat

#implement library
library(dplyr)
library(plyr)
library(DBI)
library(rJava)
library(RJDBC)
library(sqldf)
library(plotly)

createDf <<- function(file1, ...) {
  
  #set working directory for file extraction 
  setwd("D:/HVA/Jaar 2/Big_Data/Project/DataSets/RDW/rdw_zipCodesAdam")
  getwd()
  
  rdwFile <- read.csv(file1,header = TRUE,  sep = ";", na.strings = c("", "NA"), stringsAsFactors = FALSE)
  
  #Define colums to keep by name, drops all other colums
  colnames(rdwFile)[colnames(rdwFile) == 'ï..RDW_skey'] <- 'RDW_skey'
  keeps <- c("RDW_skey", "NUMMER","POSTCODE_NUMERIEK","TYPE_BESCHR_VTG", "BRANDSTOFCODE")

  #Drop all redundant colums
  rdwFile <- rdwFile[keeps]
  
  # To factor 
  rdwFile$BRANDSTOFCODE <- as.factor(rdwFile$BRANDSTOFCODE)
  rdwFile$POSTCODE_NUMERIEK <- as.factor(rdwFile$POSTCODE_NUMERIEK)
  
  # Sort dataframe
  rdwFileDf <- rdwFile[order(rdwFile$POSTCODE_NUMERIEK),]
  
  # Sum fueltypes
  fuelCounter <- count(rdwFile, 'BRANDSTOFCODE')
  
  # create dataframe
  rdwFileDf3 <<- data.frame(rdwFile)
}

createDf("RDW3_1050_1059.csv")




