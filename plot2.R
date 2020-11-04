#1.Read the File 
info <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",header=TRUE)
# 2. get column names
colnames(info)
# 4. Select the info from the dates 2007-02-01 and 2007-02-02
selectinfo <- subset(info, Date == '2/2/2007' | Date == '1/2/2007')
#5. Convert the Date and Time variables to Date/Time
selectinfodate <- as.Date(selectinfo$Date, format = "%d/%m/%Y")
selectinfotime <- paste(selectinfodate, selectinfo$Time)
selectinfotime  <- strptime(selectinfotime, format = "%Y-%m-%d %H:%M:%S")
#6.  Construct the plot and save it into PNG file with a width of 480 pixels and a height of 480 pixels
png("plot2.png", width = 480, height = 480, units = "px")
plot(selectinfotime, selectinfo$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
#Final close the PNG device
dev.off()
