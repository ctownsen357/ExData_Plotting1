#exploratory data analysis: course project 1
#plot3
#using sqldf library to query the input file like a table (very neat library)
library(sqldf)
#load only the target records
hhpc <- read.csv.sql("household_power_consumption.txt", sep = ";", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')")

png('plot3.png')

plot(hhpc$Sub_metering_1, type='l', ann=F, xlim=c(0,3000), xaxt = "n")
lines(hhpc$Sub_metering_2,col="red")
lines(hhpc$Sub_metering_3,col="blue")
title(ylab="Energy sub metering")
axis(1, at=c(0,1500,3000), labels=c("Thu", "Fri", "Sat"))
legend("topright", lty = 1, cex=0.8, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=c(2.5,2.5,2.5), col=c("black", "red","blue"))

dev.off()
