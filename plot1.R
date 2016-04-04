
data <- read.csv2(file="household_power_consumption.txt",
                  header=FALSE, skip=66637,dec=".", nrows = 2880,
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))


hist(data$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.copy(png, file="plot1.png")
dev.off()


