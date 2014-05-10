## This is the data prepration script.

## I have supplied a subset of the full data set, this subset contains data for the month of FEB only.
## The data is named household_power_consumption.csv.  There is a full month of data, the effect
## is that it cuts the processing time way down and produces the same results as the full data set.

## The script uses sqldf to create the subset of data for the plots.
## I use sqldf to subset because I have been a DBA for so many years it is just natural.
library(sqldf)

## Read in the full data set. 
rawdata <- read.table("household_power_consumption.csv", header = TRUE, sep = ",")

## subset the data to Feb 1st and 2nd
## I am not going to convert the date and time columns to their proper class as I
## am going to create a seperate var below to take carte of this for me.
data <- sqldf("select * from rawdata where date = '1/2/2007' or date = '2/2/2007'")

## Clear out that large table and free up some memory
rawdata <- NULL

## I am writing out the subset table just to store it for future use.
## I don't re-load this data in this project.
write.csv(data,"projectdata.csv")

## I am removing the 20 off 2007 just because I am uising %y and %Y seems to give me problems.
data$date <- gsub("/20","/",data$date)


## I am concatonating the date and time to a variable for use in the X axis of the graphs.
xLabels <- strptime(paste(data$date, data$time), format='%d/%m/%y %H:%M:%S')

## This is a special variable, it tells the four plot scripts not to re-process the data
## each time they run.
Dataloaded <- 1

## If you need to re-process data, set Dataloded <- NULL in your environment.