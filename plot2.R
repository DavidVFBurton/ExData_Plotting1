## Plot2.R
## Plot a line graph of the global_active_power column of the data set.

## If our special variable "Dataloaded" is available and it is not null then do not 
## re-process the csv files, otherwise load and process them.
if (!exists("Dataloaded") || is.null(Dataloaded)) {
  
  source('processdata.R')
  
}

## set the rows and columns for plotting to 1, 1
par(mfcol = c(1,1))

## Open the png device and point it to plot2.png
png(filename = "plot2.png", width = 480, height = 480, units = "px")

## Plot the grath to a png file
plot(xLabels,data$global_active_power,type="l",ylab="Global Active Power (killowatts)",xlab="",main="")

## Turn off the png device
dev.off()

## Just extra: plot the chart to the screen device
plot(xLabels,data$global_active_power,type="l",ylab="Global Active Power (killowatts)",xlab="",main="")
