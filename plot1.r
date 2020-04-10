#Plot 1

#read in subset file created with datasubset.r
df <- read.csv("household_power_subset.csv",stringsAsFactors = FALSE, row.names = 1)

png(file="plot1.png",width=480,height=480) #initialise graphic device
hist(df$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)",main="Global Active Power")
dev.off() #close connection to graphic device
