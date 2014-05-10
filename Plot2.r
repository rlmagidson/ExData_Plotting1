# Plot2.r
setwd("~/AllSync/Coursera/Exploratory Graphics/project1")

h <- read.table( "household_power_consumption.txt", sep = ";", header = TRUE)
h <- subset( h, Date == "1/2/2007" | Date == "2/2/2007")
h$DT <- strptime( paste( h$Date, h$Time), "%d/%m/%Y %H:%M:%S") 

# Display the plot on screen
with( h, plot( DT, as.numeric(Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# Output the PNG
png(filename="Plot2.png", height=480, width=480, bg="white", units = "px")
with( h, plot( DT, as.numeric(Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
