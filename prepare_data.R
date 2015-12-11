
loadData <- function() {
    zipName <- "household_power_consumption.zip"
    dataFile <- "household_power_consumption.txt"
    
    if(! file.exists(zipName)) {
        fileURL="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url=fileURL,destfile=zipName,method="curl")
    }
    # Extract Data File
    if(! file.exists(dataFile)) {
        unzip(zipfile=zipName, exdir=".")
    }
    
    fullData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
    fullData[fullData$Date %in% c("1/2/2007","2/2/2007") ,]
} 