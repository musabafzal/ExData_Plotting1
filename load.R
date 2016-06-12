loaddata<-function(){
  df <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";")
  name <- sapply(read.table("household_power_consumption.txt", nrow = 1, sep = ";"), as.character)
  names(df) <- name
  df$Date <- as.Date(strptime(df$Date, format="%d/%m/%Y"))
  df$Time <- strptime(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")
  df
}