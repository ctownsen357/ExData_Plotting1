

png(filename = "plot4.png")

op<-par(mfrow=c(2,2), cex.lab=1, cex.axis=1 ,cex.main=1)

plot(hhpc$Global_active_power, type='l', ann=F, xlim=c(0,3000), xaxt = "n")
title(ylab="Global Active Power")
axis(1, at=c(0,1500,3000), labels=c("Thu", "Fri", "Sat"))

plot(hhpc$Voltage, type='l', ann=F, xlim=c(0,3000), xaxt = "n")
title(ylab="Voltage", xlab="datetime")
axis(1, at=c(0,1500,3000), labels=c("Thu", "Fri", "Sat"))

plot(hhpc$Sub_metering_1, type='l', ann=F, xlim=c(0,3000), xaxt = "n")
lines(hhpc$Sub_metering_2,col="red")
lines(hhpc$Sub_metering_3,col="blue")
title(ylab="Energy sub metering")
axis(1, at=c(0,1500,3000), labels=c("Thu", "Fri", "Sat"))
legend("topright", cex=0.8, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=c(2.5,2.5,2.5), lty=1, col=c("black", "red","blue"), bty="n")

plot(hhpc$Global_reactive_power, type='l', ann=F, xlim=c(0,3000), ylim=c(0,0.5),  xaxt = "n")
title(ylab="Global_reactive_power", xlab="datetime")
axis(1, at=c(0,1500,3000), labels=c("Thu", "Fri", "Sat"))

par(op)
dev.off()
