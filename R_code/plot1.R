## Plot1.R
## Global Active Power

## Read and filter the data
## -------------------------
data <- read.csv("data/household_power_consumption.txt", sep=";"
                 , na.strings = "?"
                 ,colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
                )



# convert date info in format 'mm/dd/yyyy'
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# select data from 2007-02-01 to 2007-02-02
dataSelect <- data[(data$Date >= "2007-02-01" & data$Date <="2007-02-02"),]



## Make Plot
## ----------
par(mfcol = c(1, 1))

hist(dataSelect$Global_active_power
     , col = "red"
     , main = "Global Active Power"
     , xlab = "Global Active Power (kilowatts)")



## Copy my plot to a PNG file
dev.copy(png, file = "figures/plot1.png", width=480, height=480)
dev.off()       ## Close teh PNG device

