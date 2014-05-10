if (!exists("Dataloaded") || is.null(Dataloaded)) {
  
  source('processdata.R')
  
}

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfcol = c(2,2),lwd=0.5)
plot(xLabels,data$global_active_power,type="l",ylab="Global Active Power",xlab="",main="",lwd=0.5)

plot(xLabels,data$sub_metering_1,type="l",ylab="Energy sub metering",xlab="",main="", lwd=0.5)

lines(xLabels,data$sub_metering_2,col="red",type="l")
lines(xLabels,data$sub_metering_3,col="blue",type="l")
legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")

plot(xLabels,data$voltage,type="l",ylab="Voltage",xlab="Datetime",main="",lwd=0.5)

plot(xLabels,data$global_reactive_power,type="l",xlab="Datetime", ylab="global_reactive_power",main="",lwd=0.5)

dev.off()

par(mfcol = c(2,2),lwd=0.5)
plot(xLabels,data$global_active_power,type="l",ylab="Global Active Power",xlab="",main="",lwd=0.5)

plot(xLabels,data$sub_metering_1,type="l",ylab="Energy sub metering",xlab="",main="", lwd=0.5)

lines(xLabels,data$sub_metering_2,col="red",type="l")
lines(xLabels,data$sub_metering_3,col="blue",type="l")
legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")

plot(xLabels,data$voltage,type="l",ylab="Voltage",xlab="Datetime",main="",lwd=0.5)

plot(xLabels,data$global_reactive_power,type="l",xlab="Datetime", ylab="global_reactive_power",main="",lwd=0.5)
