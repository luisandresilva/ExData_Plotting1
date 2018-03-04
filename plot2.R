### Obtain and load data
#source("preprocess.R")

### Plot graph
plot(power$DateTime,power$Global_active_power,ylab="Global Active Power (kilowatts)",  
     type="l", xlab="", lwd=1, col="black")

### Copy graph to png device
dev.copy(device=png, filename="plots/plot2.png", width=480, height=480)
dev.off()