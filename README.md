Project: ExData_Plotting1
==


This REPO contains five R files, four graphs, plotting data and a subset of the household_power_consumption.csv data set.

### R Files: 
* **processdata.R** Processes the raw data into usable data and generates a subset containing data from Feb-01-2007 to Feb-02-2007. 
* **plot1.R** Generates *plot1.png* 
* **plot2.R** Generates *plot2.png* 
* **plot3.R** Generates *plot3.png*  
* **plot4.R** Generates *plot4.png*  

**Graphs:** 
* **plot1.png** A histogram describing the global_active_power column in kilowatts of data set "data"
* **plot2.png** A line graph describing the global_active_power column in kilowatts of data set "data"
* **plot3.png** A line graph showing three plots of columns (sub_metering 1 through 3) over a two day period.
* **plot4.png** Four charts showing plots 1 & 2 and two others describing the global reactive power and voltage columns in the data set "data" over a two day period. 

**Datasets:** projectdata.csv, household_power_consumption.csv

R File descriptions:
--
**processdata.R**  
This file is responsible for preparing the data for usage.  The R script reads in the data from household_power_consumption.csv and pulls a subset of the data from 1-2-2007 through 2-2-2007 (Two days worth of readings).  
The outcome of this script is a data set contained in the variable "**data**" and a processed csv file called "**projectdata.csv**"

**Plotting Files**  
The plotting files contain a minimum amount to code and load in the data processing code if needed.  There are four plotting files, one for each plot.  

**All plots files are written to a png file and then to the screen device.**
In the case where a plot my not display properly on the screen, please refer to the png file.  The png files are more accurate then the screen device.  

**plot1.R**
This file plots a histogram of the "**Global Active Power**" column of the data set "**data**".  The data is combined into six samples divided in 0.5 increments.  The Frequency is expresses as the sum of the measurement.  

Example: The first bar on the chart represents all values less than or equal to 0.5.  This can be seen in the following code sample.

```{r}
> sqldf("select count(*) as Freq from data where global_active_power <= 0.5")
  Freq
1 1234
```

**plot2.R**
This file plots a line graph of the "Global Active Power" column of data set "**data**".  
Measurements are taken across two days and represent the frequency of the samples across those two days.

**plot3.R**  
This file plots a multi column data set.  Columns {sub_metering_1, sub_metering_2, sub_metering_3}.  
The data is sampled over a two day period, the columns sub_metering 1, 2 and 3 are identified by {black, red, blue} respectively.

**plot4.R**  
This file plots four graphs, Plots 2 and 3 and then a line plot of the voltage column over two days and a plot of the global reactive power column.

Usage
---

**Prerequesets:**  
You must either use the "household_power_consumption.csv" data set from the course project description or the supplied subset of that data file.  
The subset of the household_power_consumption.csv data set contains only data from the month being sampled.  This greatly reduces the memory load on your computer.  

The subset data is provided in this repository under the name "household_power_consumption.csv". 

You must also set your working directory to the location of the "household_power_consumption.csv" directory.

**Script Usage:**  

To generate any on of the four plots, you simply run the appropriate R script {plot1.R, plot2.R, plot3.R, plot4.R}  

Each R script will load the data processing script as needed.  

The data processing script creates a special variable called "**Dataloaded** and sets it to a value of **1**  this tells each script that it does not need to use unnecessary resources re-running the data processing task.  

If you need to re-process the data, simply set the variable Dataloaded to null.  
```{r}
Dataloaded <- NULL
```

This will cause any of the four scripts to reprocess the data.
