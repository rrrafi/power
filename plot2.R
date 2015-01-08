# Loading file (relevant parts only)
setwd("~/Documents/power_cons")
cons <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)

# Plot 2
png("plot2.png", width=480, height=480)
plot(cons$V3, xaxt="n", type="l", ylab="Global Active Power (kilowatts)", xlab="")
axis(1,as.numeric(cons$V1), at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()
