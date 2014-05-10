## Plot4.R
## Plot a chart containing four graphs {Global Active Power, Energy sub metering, Voltage, global reactive power}

## If our special variable "Dataloaded" is available and it is not null then do not 
## re-process the csv files, otherwise load and process them.


  if (!exists("Dataloaded") || is.null(Dataloaded)) {
    
    source('processdata.R')
    
  }
  
## Open the png device and point it to plot4.png
  png(filename = "plot4.png", width = 480, height = 480, units = "px")
  
## Set the chart to two columns and two rows with a line width og 0.5
  par(mfcol = c(2,2),lwd=0.5)
  
## Render the first graph for Global Active Power  
  plot(xLabels,data$global_active_power,type="l",ylab="Global Active Power",xlab="",main="",lwd=0.5)
  
## Render the second graph for Energy sub metering {sub_metering_1}  
  plot(xLabels,data$sub_metering_1,type="l",ylab="Energy sub metering",xlab="",main="", lwd=0.5)
  
## Add the second plot to the graph {sub_metering_2}, Make this plot red  
  lines(xLabels,data$sub_metering_2,col="red",type="l")
  
## Add the third plot to the graph {sub_metering_3}, Make this plot blue
  lines(xLabels,data$sub_metering_3,col="blue",type="l")
  
## Add the legend to the top right of the graph with the legend text and a colored line to represent each plot.
  legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
  
## Render the third graph for Voltage
  plot(xLabels,data$voltage,type="l",ylab="Voltage",xlab="Datetime",main="",lwd=0.5)
  
## Render the fourth graph for global reactive power.
  plot(xLabels,data$global_reactive_power,type="l",xlab="Datetime", ylab="global_reactive_power",main="",lwd=0.5)

## Close the png device.
  dev.off()
  

## Extra: Re render entire graph to screen device, Code same as above.
  plot(xLabels,data$global_active_power,type="l",ylab="Global Active Power",xlab="",main="",lwd=0.5)
  
  plot(xLabels,data$sub_metering_1,type="l",ylab="Energy sub metering",xlab="",main="", lwd=0.5)
  
  lines(xLabels,data$sub_metering_2,col="red",type="l")
  lines(xLabels,data$sub_metering_3,col="blue",type="l")
  legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
  
  plot(xLabels,data$voltage,type="l",ylab="Voltage",xlab="Datetime",main="",lwd=0.5)
  
  plot(xLabels,data$global_reactive_power,type="l",xlab="Datetime", ylab="global_reactive_power",main="",lwd=0.5)
