#1.Read the File 
info <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",header=TRUE)
# 2. get column names
colnames(info)
# 4. Select the info from the dates 2007-02-01 and 2007-02-02
selectinfo <- subset(info, Date == '2/2/2007' | Date == '1/2/2007')
#5. Construct the plot and save it into a PNG file with a width of 480 pixels and a height of 480 pixels
png("plot1.png", width = 480, height = 480, units = "px")
hist(selectinfo$Global_active_power, main="Global Active Power", col="red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
#Final close the PNG device
dev.off()
