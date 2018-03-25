source('filterdata.R')
png(filename = 'plots/plot1.png')
hist(selected_data$Global_active_power,col = "Red", main = "Golbal Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()

