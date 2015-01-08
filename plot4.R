# Loading file (relevant parts only)
setwd("~/Documents/power_cons")
cons <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)

png("plot4.png", width=480, height=480)

# Graphics parameters
par(mfrow = c(2,2), mar=c(2,4,1,1))

# Plot 1
plot(cons$V3, xaxt="n", type="l", ylab="Global Active Power", xlab="")
axis(1,as.numeric(cons$V1), at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))

# Plot 2
plot(cons$V5, xaxt="n", type="l", ylab="Voltage", xlab="")
axis(1,as.numeric(cons$V1), at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))

# Plot 3
plot(cons$V7,xaxt="n",type="l",xlab="",ylab="Energy sub metering")
lines(cons$V8,type="l",col="red")
lines(cons$V9,type="l",col="blue")
legend("topright",lwd=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1,as.numeric(cons$V1), at=c(1,1440,2880),labels=c("Thu","Fri","Sat"), cex=0.1)

# Plot 4
plot(cons$V4, xaxt="n", type="l", ylab="Global Reactive Power", xlab="")
axis(1,as.numeric(cons$V1), at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))

dev.off()