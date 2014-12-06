## load_data.R is a common module that contains code to read the data file.
##
source("load_data.R")

## open PNG device
##
png( filename = "plot3.png", 
     width    = 480, 
     height   = 480,
     units    = "px", 
     bg       = "transparent")

## plot the graph
##
plot(DateTime, 
     Sub_metering_1, 
     type = "l",
     main = "Global Active Power", 
     xlab = "", 
     ylab = "Energy sub metering")
     lines(DateTime, Sub_metering_1, col = "brown") #change color to brown
     lines(DateTime, Sub_metering_2, col = "red")
     lines(DateTime, Sub_metering_3, col = "blue")
     legend("topright", col = c("brown", "red", "blue"),
            c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

## close PNG device
##
dev.off()


