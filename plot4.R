### Obtain and load data
source("preprocess.R")

### Defines grid
par(mfrow = c(2,2))

### Plot top left graph
plot(power$DateTime,power$Global_active_power,ylab="Global Active Power (kilowatts)",  
     type="l", xlab="", lwd=1, col="black")

### Plot top right graph
plot(power$DateTime,power$Voltage,ylab="Voltage",  
     type="l", xlab="datetime", lwd=1, col="black")

### Plot bottom left graph
plot(power$DateTime,power$Sub_metering_1,ylab="Energy sub metering",  
     type="l", xlab="", lwd=1, col="black")
lines(power$DateTime,power$Sub_metering_2, col="red")
lines(power$DateTime,power$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=c(3,2), col=c("black","red","blue"), cex = 0.5)

## Plot bottom right graph
plot(power$DateTime,power$Global_reactive_power,ylab="Global_reactive_power",  
     type="l", xlab="datetime", lwd=1, col="black", ylim=c(0.0,0.5))

### Copy graph to png device
dev.copy(device=png, filename="plots/plot4.png", width=480, height=480)
dev.off()