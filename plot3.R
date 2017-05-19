mydata <- read.table("Assignment_One.txt", header = TRUE, sep = ";", na.strings = "?")
subset_data <- mydata[mydata$Date %in% c("1/2/2007", "2/2/2007"),]
datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width = 480, height = 480)
plot(datetime, subset_data$Sub_metering_1, xlab = "", ylab = "Energy Sub metering", col = 'black', type = "l")
lines(datetime, subset_data$Sub_metering_2, col = 'red')
lines(datetime, subset_data$Sub_metering_3, col = 'blue')
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2)
dev.off()