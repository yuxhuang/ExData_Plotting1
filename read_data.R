library(data.table)
library(dplyr)

prepare.dataset <- function() {
  # check if file exists
  if (file.exists('dataset/household_power_consumption.txt')) {
    return()
  }
  
  # download file
  url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  tmp <- tempfile('dataset.zip')
  download.file(url, destfile = tmp)
  
  # extract file
  unzip(tmp, exdir = 'dataset/')
}

read.dataset <- function () {
  # read data
  data <- fread('dataset/household_power_consumption.txt', na.strings = '?')
  
  # process data
  data %>%
    filter(Date == '1/2/2007' | Date == '2/2/2007') %>%
    mutate(timestamp = as.POSIXct(paste(Date, Time), format = '%d/%m/%Y %H:%M:%S'))
}