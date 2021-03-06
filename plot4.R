source("prepare_data.R")

# Load Data
data <- loadData();

# Plot Data
dateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))

plot(dateTime, as.numeric(data$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(dateTime, as.numeric(data$Voltage), type="l", xlab="datetime", ylab="Voltage")

plot(dateTime, as.numeric(data$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(dateTime, as.numeric(data$Sub_metering_2), type="l", col="red")
lines(dateTime, as.numeric(data$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")


plot(datetime, as.numeric(data$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

#Close Device
dev.off()