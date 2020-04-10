#Exploring Data Week 1 Assignment

#Quick calculation of memory requirement for dataset:
#dims are 2,075,259 rows by 9 cols so rows * cols * 8 bytes = ~150MB of memory requirement (16GB available in system)

data <- read.table("household_power_consumption.txt",header=T,sep=";",stringsAsFactors = F, dec=".",na.strings="?")

cleaned <- data
cleaned$Date <- as.Date(data$Date,format='%d/%m/%Y')
#Alternatively: library(lubridate); cleaned$Date <- dmy(data$Date)

cleaned$Time <- strptime(paste(data$Date,data$Time),format='%d/%m/%Y %H:%M:%S')

#Subset to just the specified dates
df <- subset(cleaned,Date >= "2007-02-01" & Date <= "2007-02-02")

write.csv(df,"household_power_subset.csv")
