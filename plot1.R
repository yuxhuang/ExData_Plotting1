library(data.table)
source('read_data.R')

draw.plot1 <- function() {
  data <- read.dataset()
  png(filename = 'plot1.png', width = 600, height = 600)
  hist(data$Global_active_power,
       col = 'red',
       xlab = 'Global Active Power (kilowatts)',
       ylab = 'Frequency',
       main = 'Global Active Power')
  dev.off()
}

draw.plot1()