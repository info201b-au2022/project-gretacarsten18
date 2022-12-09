library(shiny)


server <- function(input, output) {
  number_victimes_month <- reactive({
   number_victimes_month <- number_victimes_month %>% 
      filter(People.shot.to.death.by.U.S..police.2017.2022..by.month %in% input$number_victims_month)})
  filter("2018" %in% observe(input$number_victims_month))
  
  output$bar <- renderPlot ({
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
    
  })
}

