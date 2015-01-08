# Loading file (relevant parts only)
setwd("~/Documents/power_cons")
cons <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)

# Plot 1
png("plot1.png", width=480, height=480)
hist(cons$V3, main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
dev.off()

