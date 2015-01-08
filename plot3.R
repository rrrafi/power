# Loading file (relevant parts only)
setwd("~/Documents/power_cons")
cons <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)

# Plot 3
png("plot3.png", width=480, height=480)
plot(cons$V7,xaxt="n",type="l",xlab="",ylab="Energy sub metering")
lines(cons$V8,type="l",col="red")
lines(cons$V9,type="l",col="blue")
legend("topright",lwd=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1,as.numeric(cons$V1), at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()