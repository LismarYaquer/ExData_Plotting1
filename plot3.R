
data <- read.csv2(file="household_power_consumption.txt",
                  header=FALSE, skip=66637,dec=".", nrows = 2880,
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
data$datetime <- strptime(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")

par(mar=c(5,4,4,2))
with(data, plot(datetime, Sub_metering_1, type="l",col="black", ylab="Energy sub metering", xlab=""))
with(data,points(datetime,Sub_metering_2, type="l", col="red"))
with(data,points(datetime,Sub_metering_3, type="l", col="blue"))
legend("topright",legend=paste("Sub_metering_",1:3,sep=""),lty=1, col=c("black", "red","blue"))


dev.copy(png, file="plot3.png")
dev.off()


