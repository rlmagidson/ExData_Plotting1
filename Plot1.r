# Plot1.r
setwd("~/AllSync/Coursera/Exploratory Graphics/project1")

h <- read.table( "household_power_consumption.txt", sep = ";", header = TRUE)
h <- subset( h, Date == "2/1/2007" | Date == "2/2/2007")
str(h)  # 2,880 observations - OK
h$DT <- strptime( paste( h$Date, h$Time), "%m/%d/%Y %H:%M:%S") 
head(h)

# Output the PNG
png(filename="Plot1.png", height=480, width=480, bg="white", units = "px")
hist( as.numeric(h$Global_active_power)
      , xlab = "Global Active Power (kilowatts)"
      , main = "Global Active Power", col = "Red")
dev.off()
