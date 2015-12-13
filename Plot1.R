## Code for Project 1


## reading data from extracted file on disk
pdat <- read.table(
  "./exdata_data_household_power_consumption/household_power_consumption.txt", 
  header = T, sep = ";")

## subsetting to desired dates

datuse <- pdat[as.character(pdat$Date) %in% c("1/2/2007","2/2/2007"),]

## plot 1

png("plot1.png", width=480, height= 480, units= "px")
hist(as.numeric(as.character(datuse$Global_active_power)), col= "red", 
     xlab= "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
