## load_data.R is a common module that contains code to read the data file.
##
source("load_data.R")

## open PNG device
##
png( filename = "plot1.png", 
     width    = 480, 
     height   = 480, 
     units    = "px", 
     bg       = "transparent")

## plot histogram
##
hist(Global_active_power, 
     col    = "green", 
     main   = "Global Active Power", 
     xlab   = "Global Active Power (KWH)",
     ylab   = "Frequency",
     breaks = 20, 
     ylim   = c(0, 1500))

## close PNG device
##
dev.off()



