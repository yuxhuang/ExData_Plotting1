source('read_data.R')

# Plot 3
draw.plot3 <- function() {
  data <- read.dataset()
  png(filename = 'plot3.png', width = 600, height = 600)
  plot(data$timestamp, data$Sub_metering_1,
       type = 'l', xlab = '', ylab = 'Energy sub metering')
  points(data$timestamp, data$Sub_metering_2, type = 'l', col = 'red')
  points(data$timestamp, data$Sub_metering_3, type = 'l', col ='blue')
  legend('topright',
         col = c('black', 'red', 'blue'),
         lwd = c(1,1,1),
         pt.cex = 1,
         cex = 1,
         legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
  dev.off()
}

draw.plot3()