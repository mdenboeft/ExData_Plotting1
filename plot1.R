#set and get working directory
setwd("/Users/madelondenboeft/Desktop")
getwd()

#create plot1
fulldataset <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_needed <- subset(fulldataset, Date %in% c("1/2/2007","2/2/2007"))

data_needed$Date <- as.Date(data_needed$Date, format="%d/%m/%Y")
hist(data_needed$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
