# Plot3.r
setwd("~/AllSync/Coursera/Exploratory Graphics/project1")

h <- read.table( "household_power_consumption.txt", sep = ";", header = TRUE)
h <- subset( h, Date == "1/2/2007" | Date == "2/2/2007")
h$DT <- strptime( paste( h$Date, h$Time), "%d/%m/%Y %H:%M:%S") 

# Display the plot on screen
plot( h$DT, h$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering", col = "Black")
lines( h$DT, h$Sub_metering_2, type = "l", col = "Red")
lines( h$DT, h$Sub_metering_3, type = "l", col = "Blue")
legend("topright", cex = .5, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Note the legend size in the PNG != that of the window
png(filename="Plot3.png", height=480, width=480, bg="white", units = "px")

plot( h$DT, h$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering", col = "Black")
lines( h$DT, h$Sub_metering_2, type = "l", col = "Red")
lines( h$DT, h$Sub_metering_3, type = "l", col = "Blue")
legend("topright", cex = 1.5, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
