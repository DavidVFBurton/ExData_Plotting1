## Plot1.R
## Plot a histagram of the global_active_power column of the data set.

## If our special variable "Dataloaded" is available and it is not null then do not 
## re-process the csv files, otherwise load and process them.
  if (!exists("Dataloaded") || is.null(Dataloaded)) {
    
    source('processdata.R')
    
  }

## set the rows and columns for plotting to 1, 1
  par(mfcol = c(1,1))
  
  
## Open the png device and point it to plot1.png
  png(filename = "plot1.png", width = 480, height = 480, units = "px")

## plot the chart to the png file
  hist(data$global_active_power,col="red",xlab="Global Active Power (killowatts)",ylab="Frequency",main="Global Active Power")
  
## Turn off the png device.
  dev.off()
  
## Re-plot the graph to the screen device.  (Just because)
  hist(data$global_active_power,col="red",xlab="Global Active Power (killowatts)",ylab="Frequency",main="Global Active Power")
  