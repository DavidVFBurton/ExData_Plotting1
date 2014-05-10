## Plot3.R
## Plot a line graph containing the following columns {sub_metering_1, ..._2, ..._3} of the data set.

## If our special variable "Dataloaded" is available and it is not null then do not 
## re-process the csv files, otherwise load and process them.
if (!exists("Dataloaded") || is.null(Dataloaded)) {
  
  source('processdata.R')
  
}

## Open the png device and point it to plot3.png
png(filename = "plot3.png", width = 480, height = 480, units = "px")

## Write the initial plot to the device
plot(xLabels,data$sub_metering_1,type="l",ylab="Energy sub metering",xlab="",main="", col="black")

## Add the second plot to the graph
lines(xLabels,data$sub_metering_2,col="red",type="l")

## Add the third plot to the graph
lines(xLabels,data$sub_metering_3,col="blue",type="l")

## Add a legend to the graph with colored lines to represent each plot.
legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty=1)

## Turn off the png device
dev.off()

## Jusrt extra, plot the same graph to the screen device.
plot(xLabels,data$sub_metering_1,type="l",ylab="Energy sub metering",xlab="",main="", col="black")

lines(xLabels,data$sub_metering_2,col="red",type="l")
lines(xLabels,data$sub_metering_3,col="blue",type="l")


legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty=1)
