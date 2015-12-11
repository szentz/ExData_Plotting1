source("prepare_data.R")

# Load Data
data <- loadData();

# Plot Data
png("plot1.png",width=480,height=480,units="px",bg="transparent")
hist(as.numeric(data$Global_active_power), col="red", main="Global Active Power", 
    xlab="Global Active Power (kilowatts)", ylab="Frequency"
)

# Close Device
dev.off() 