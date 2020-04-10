#plot 3

#read in subset file created with datasubset.r
df <- read.csv("household_power_subset.csv",stringsAsFactors = FALSE, row.names = 1)

df$Time <- strptime(df$Time,format='%Y-%m-%d %H:%M:%S')

png(file="plot3.png",width=480,height=480) #initialise graphic device
plot(df$Time,df$Sub_metering_1, t="l",xlab="",ylab="Energy sub metering")
lines(df$Time,df$Sub_metering_2,col="red")
lines(df$Time,df$Sub_metering_3,col="blue")
legend("topright",legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty=1)
dev.off() #close connection to graphic device
