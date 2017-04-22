source('read_data.R')

# Plot 4
draw.plot4 <- function() {
  data <- read.dataset()
  
  png(filename = 'plot4.png', width = 600, height = 600)
  
  par(mfrow=c(2,2))
  
  # 1
  plot(data$timestamp, data$Global_active_power,
       type = 'l', xlab = '', ylab = 'Global Active Power')
  
  # 2
  plot(data$timestamp, data$Voltage,
       type='l', xlab='datetime', ylab='Voltage')
  
  # 3
  plot(data$timestamp, data$Sub_metering_1,
       type = 'l', xlab = '', ylab = 'Energy sub metering')
  points(data$timestamp, data$Sub_metering_2, type = 'l', col = 'red')
  points(data$timestamp, data$Sub_metering_3, type = 'l', col ='blue')
  legend('topright',
         col = c('black', 'red', 'blue'),
         lwd = c(1,1,1),
         ncol = 1,
         cex = 1,
         legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
  
  # 4
  plot(data$timestamp, data$Global_reactive_power,
       type='l', xlab='datetime', ylab='Global reactive power')  
  
  dev.off()
}

draw.plot4()