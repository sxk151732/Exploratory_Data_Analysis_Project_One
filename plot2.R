mydata <- read.table("Assignment_One.txt", header = TRUE, sep = ";", na.strings = "?")
subset_data <- mydata[mydata$Date %in% c("1/2/2007", "2/2/2007"),]
datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(datetime, subset_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()