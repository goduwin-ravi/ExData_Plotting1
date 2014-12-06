## load_data.R is a common module that contains code to read the data file.
##
source("load_data.R")

## open PNG device
##
png( filename = "plot4.png", 
     width    = 480, 
     height   = 480,
     units    = "px", 
     bg       = "transparent")

## plot the multi-graphs
##
par(mfrow = c(2, 2)) # Plot four graphs in a (2 x 2) layout

## Graph-1 (Top Left)
plot(DateTime, 
     Global_active_power, 
     type = "l",
     col  = "brown",
     main = "Global Active Power", 
     xlab = "", 
     ylab = "Global Active Power (KWH)")

## Graph-2 (Top Right)
plot(DateTime, 
     Voltage,
     type = "l",
     col  = "red",
     main = "Global Active Power", 
     xlab = "", 
     ylab = "Voltage")

## Graph-3 (Bottom Left)
plot(DateTime, 
     Sub_metering_1, 
     type = "l",
     main = "Global Active Power", 
     xlab = "", 
     ylab = "Energy Sub-Metering")

     lines(DateTime, Sub_metering_1, col = "brown") #change color to brown
     lines(DateTime, Sub_metering_2, col = "red")
     lines(DateTime, Sub_metering_3, col = "blue")
     legend("topright", 
            bty = "n",
            col = c("brown", "red", "blue"),
                  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                  lwd = 1)

## Graph-4 (Bottom Right)
plot(DateTime, 
     Global_reactive_power, 
     type = "l",
     col  = "green",
     main = "Global Active Power", 
     xlab = "", 
     ylab = "Global Reactive Power")

## close PNG device
##
dev.off()



