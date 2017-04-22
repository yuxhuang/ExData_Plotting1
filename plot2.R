library(data.table)
source('read_data.R')

draw.plot2 <- function() {
  data <- read.dataset()
  png(filename = 'plot2.png', width = 600, height = 600)
  plot(data$timestamp,
       data$Global_active_power,
       type = 'l',
       xlab = '',
       ylab = 'Global Active Power (kilowatts)')
  dev.off()
}

draw.plot2()