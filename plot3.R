### Obtain and load data
#source("preprocess.R")


### Plot graph
plot(power$DateTime,power$Global_active_power,ylab="Global Active Power (kilowatts)",  
     type="l", xlab="", lwd=1, col="black")
plot(power$DateTime,power$Sub_metering_1,ylab="Energy sub metering",  
     type="l", xlab="", lwd=1, col="black", ylim=c(0,40))
lines(power$DateTime,power$Sub_metering_2, col="red")
lines(power$DateTime,power$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=c(3,2), col=c("black","red","blue"))

### Copy graph to png device
dev.copy(device=png, filename="plots/plot3.png", width=480, height=480)
dev.off()