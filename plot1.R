#exploratory data analysis: course project 1
#plot1
#using sqldf library to query the input file like a table (very neat library)

library(sqldf)

#load only the target records
hhpc <- read.csv.sql("household_power_consumption.txt", sep = ";", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')")

png("plot1.png") #open a png file

hist(as.numeric(hhpc$Global_active_power), col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)")

dev.off() #turn off the png device
