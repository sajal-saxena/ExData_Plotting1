source('filterdata.R')
png(filename = 'plots/plot3.png')
plot(datetime,selected_data$Sub_metering_1, type = 'l', xlab = ' ', ylab = 'Energy sub metering')
points(datetime,selected_data$Sub_metering_2, type = 'l', col = "Red")
points(datetime,selected_data$Sub_metering_3, type = 'l', col = "Blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c('Black','Red','Blue'), lty = 'solid')
dev.off()

