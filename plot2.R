#exploratory data analysis: course project 1
#plot2
#using sqldf library to query the input file like a table (very neat library)
library(sqldf)
#load only the target records
hhpc <- read.csv.sql("household_power_consumption.txt", sep = ";", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')")

hhpc$Date<-as.Date(strptime(hhpc$Date, "%d/%m/%Y"),format="%Y-%m-%d")

png('plot2.png')

plot(hhpc$Global_active_power, type='l', ann=F, xlim=c(0,3000), xaxt = "n")
title(ylab="Global Active Power (kilowatts)")
axis(1, at=c(0,1500,3000), labels=c("Thu", "Fri", "Sat"))

dev.off()
