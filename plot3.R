source("prepare_data.R")

# Load Data
data <- loadData();

# Plot Data
dateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(dateTime, as.numeric(data$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(dateTime, as.numeric(data$Sub_metering_2), type="l", col="red")
lines(dateTime, as.numeric(data$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#Close Device
dev.off()