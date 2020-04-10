#plot 2

#read in subset file created with datasubset.r
df <- read.csv("household_power_subset.csv",stringsAsFactors = FALSE, row.names = 1)

df$Time <- strptime(df$Time,format='%Y-%m-%d %H:%M:%S')

png(file="plot2.png",width=480,height=480) #initialise graphic device
plot(df$Time,df$Global_active_power, t="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off() #close connection to graphic device
