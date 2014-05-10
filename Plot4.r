# Plot4.r
setwd("~/AllSync/Coursera/Exploratory Graphics/project1")

h <- read.table( "household_power_consumption.txt", sep = ";", header = TRUE)
h <- subset( h, Date == "1/2/2007" | Date == "2/2/2007")
h$DT <- strptime( paste( h$Date, h$Time), "%d/%m/%Y %H:%M:%S") 

png(filename="Plot4.png", height=480, width=480, bg="white", units = "px")

par( mfrow = c(2, 2))
with( h, {
  plot( DT, as.numeric(Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  plot( DT, as.numeric(Voltage), type = "l", xlab = "datetime", ylab = "Voltage")  
  plot( DT, Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering", col = "Black")
  lines( DT, Sub_metering_2, type = "l", col = "Red")
  lines( DT, Sub_metering_3, type = "l", col = "Blue")
  legend("topright", cex = 0.75, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot( DT, as.numeric(Global_reactive_power), type = "l", xlab = "datetime", ylab = "Global Reactive Power")
})

dev.off()
