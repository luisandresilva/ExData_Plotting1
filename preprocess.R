### Pre-processing

#### Download and extract original data
if (!file.exists("household_power_consumption.txt")) {
    library(downloader)
    download("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
         dest="dataset.zip", mode="wb") 
    unzip ("dataset.zip", exdir = "./")
}

#### Read data
power <- read.table("household_power_consumption.txt", 
                            colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
                            quote="\"", sep = ";",na.strings ="?",
                            header=TRUE, stringsAsFactors = FALSE)

#### Transform date and time columns
power$DateTime <- paste(power$Date,power$Time)
power$DateTime <- strptime(power$DateTime,format = "%d/%m/%Y %H:%M:%S")

#### Select date interval from 2007-02-01 to 2007-02-02
power <- power["2007-02-01 00:00:00"<=power$DateTime & power$DateTime<="2007-02-02 23:59:59",]

