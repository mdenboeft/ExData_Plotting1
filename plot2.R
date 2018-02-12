#set and get working directory
setwd("/Users/madelondenboeft/Desktop")

#create plot 2
fulldataset <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_needed <- subset(fulldataset, Date %in% c("1/2/2007","2/2/2007"))
data_needed$Date <- as.Date(data_needed$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data_needed$Date), data_needed$Time)
data_needed$Datetime <- as.POSIXct(datetime)

dev.copy(png, file="plot2.png", height=480, width=480)
with(data_needed, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.off()
