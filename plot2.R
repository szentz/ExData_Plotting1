source("prepare_data.R")

# Load Data
data <- loadData();

# Plot Data
dateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(dateTime, as.numeric(data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Close Device
dev.off()