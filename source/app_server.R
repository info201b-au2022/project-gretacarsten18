library(dplyr)
library(plotly)
library(ggplot2)
library(shiny)


# Source functions and data
source("chart2.R")

server <- function(input, output) {
  output$bar <- renderPlot({
    month_numbers <- (x=c(525, 516, 554, 493, 518, 530, 499, 501, 
                          424, 446, 403, 435))
    months <- c("Jan", "Feb", "March", "April", "May", "June", "July",
                "Aug", "Sept", "Oct", "Nov", "Dec")
    
    barplot(month_numbers, names.arg = months, main = "Victims to Gun-Violence by Month from 2017-2022 from police",
            col = 'pink', xlab = "Months", ylab = "# of deaths", ylim=c(0,600))
    
  })
}


