mydata <- read.table("Assignment_One.txt", header = TRUE, sep = ";", na.strings = "?")
subset_data <- mydata[mydata$Date %in% c("1/2/2007", "2/2/2007"),]
png("plot1.png", width=480, height=480)
hist(subset_data$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts")
dev.off()
