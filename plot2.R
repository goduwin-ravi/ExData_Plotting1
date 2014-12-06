## load_data.R is a common module that contains code to read the data file.
##
source("load_data.R")

## open PNG device
##
png( filename = "plot2.png", 
     width    = 480, 
     height   = 480,
     units    = "px", 
     bg       = "transparent")

## plot the graph
##
plot(DateTime, 
     Global_active_power, 
     type = "l",
     col  = "red", 
     main = "Global Active Power", 
     xlab = "",
     ylab = "Global Active Power (KWH)")

## close PNG device
##
dev.off()

