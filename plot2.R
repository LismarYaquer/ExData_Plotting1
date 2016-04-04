
data <- read.csv2(file="household_power_consumption.txt",
                  header=FALSE, skip=66637,dec=".", nrows = 2880,
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
data$datetime <- strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")


par(mar=c(5,4,2,2))
with(data, plot(datetime, Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab=""))


dev.copy(png, file="plot2.png")
dev.off()



