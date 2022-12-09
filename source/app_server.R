library(dplyr)
library(plotly)
library(ggplot2)
library(shiny)


# Source functions and data
source("chart2.R")
people_shot_by_race <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/Data.table.2.csv")
number_victimes_month <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/Data.Table.1.csv")
View(people_shot_by_race)

server <- function(input, output) {
  output$bar <- renderPlot({
    base <- number_victimes_month %>%
      filter(People.shot.to.death.by.U.S..police.2017.2022..by.month == input$number) 

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
  
  output$distPie <- renderPlot ({
    vec <- people_shot_by_race %>% filter(People.shot.to.death.by.U.S..police.2017.2022..by.race == input$shot)
    as.numeric(vec[1,])[-1]
    #slices <- c(459, 228, 167, 41, 88)
    slices <- as.numeric(vec[1,])[-1]
    lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
    pct <- round(slices/sum(slices)*100)
    lbls <- paste(lbls, pct)
    lbls <- paste(lbls,"%",sep="")
    pie(slices,labels = lbls, col=rainbow(length(lbls)))
    main="Pie Chart of People Shot by Police by Race"
  })
}


