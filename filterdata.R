if(!file.exists("household_power_consumption.txt"))
{
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}
dataclasses <- c("character", "character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
powerdata <- read.table("household_power_consumption.txt", sep = ";", header = T, colClasses = dataclasses, na.strings = "?")
selected_data <- powerdata[powerdata$Date == "1/2/2007" | powerdata$Date == "2/2/2007" , ]
datetime <- strptime(paste(selected_data$Date,selected_data$Time), "%d/%m/%Y %H:%M:%S")

