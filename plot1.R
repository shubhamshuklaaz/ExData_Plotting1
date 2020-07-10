data_full <- read.table("household_power_consumption.txt", header=T, sep=';', 
                        na.strings="?", nrows=2075259, check.names=F, 
                        stringsAsFactors=F, comment.char="", quote='\"')
data <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
png("plot1.png",, width=480, height=480)
hist(data$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()