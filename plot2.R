source('filterdata.R')
png(filename = 'plots/plot2.png')
plot(datetime,selected_data$Global_active_power,xlab = " ",ylab = "Global Active Power (kilowatts)" ,type = 'l')
dev.off()

