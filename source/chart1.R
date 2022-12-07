library(ggplot2)
hist_2017 <- Data.Table.1$V2
hist_2018 <- Data.Table.1$V3
hist_2019 <- Data.Table.1$V4
hist_2020 <- Data.Table.1$V5
hist_2021 <- Data.Table.1$V6

     
plot(hist_2021, col = 'red', xlim = c(4,17),
     ylim = c(5,150), main = "Gun Violence over the years (2017-2021) from police", 
     xlab = "Months: Jan = 5 to Dec = 16",
     ylab = "Number of victims from gun violence")

points(hist_2017, col = 'blue', lwd = 5)
points(hist_2018, col = 'purple', lwd = 5)
points(hist_2019, col = 'orange', lwd = 5)
points(hist_2020, col = 'green', lwd = 5)
points(hist_2021, col = 'red', lwd = 5)
legend(4, 125, legend = c("2017", "2018", "2019", "2020", "2021"), 
       col = c('blue', 'purple', 'orange', 'green', 'red'), lty = 1:2,
       cex = 0.8)

