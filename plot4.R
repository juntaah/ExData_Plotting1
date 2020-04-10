#plot 4

#read in subset file created with datasubset.r
df <- read.csv("household_power_subset.csv",stringsAsFactors = FALSE, row.names = 1)

df$Time <- strptime(df$Time,format='%Y-%m-%d %H:%M:%S')

png(file="plot4.png",width=480,height=480) #initialise graphic device

par(mfrow = c(2,2),mar = c(4,4,2,1),cex.axis = 0.8, cex.lab = 0.8, mgp = c(2, 0.7, 0))
with(df, {
  #top left
  plot(Time, Global_active_power, t="l",xlab="",ylab="Global Active Power")
  #top right
  plot(Time, Voltage, t="l",xlab="datetime")
  #bottom left
  plot(Time,Sub_metering_1, t="l",xlab="",ylab="Energy sub metering")
  lines(Time,Sub_metering_2,col="red")
  lines(Time,Sub_metering_3,col="blue")
  legend("topright",legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty=1, box.lty=0, cex=0.7)
  #bottom right
  plot(Time, Global_reactive_power, t="l",xlab="datetime")
})

dev.off()