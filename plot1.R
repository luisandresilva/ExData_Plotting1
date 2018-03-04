### Obtain and load data
source("preprocess.R")

### Plot graph
hist(power$Global_active_power, 
      xlab="Global Active Power (kilowatts)", 
      main="Global Active Power", col="red")

### Copy graph to png device
dev.copy(device=png, filename="plots/plot1.png", width=480, height=480)
dev.off()