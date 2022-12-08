library(dplyr)
library(plotly)
library(ggplot2)
library(shiny)


# Source functions and data
source("chart2.R")
people_shot_by_race <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/Data.table.2.csv")
server <- function(input, output) {
  output$bar <- renderPlot({
    month_numbers <- (x=c(525, 516, 554, 493, 518, 530, 499, 501, 
                          424, 446, 403, 435))
    months <- c("Jan", "Feb", "March", "April", "May", "June", "July",
                "Aug", "Sept", "Oct", "Nov", "Dec")
    
    barplot(month_numbers, names.arg = months, main = "Victims to Gun-Violence by Month from 2017-2022 from police",
            col = 'pink', xlab = "Months", ylab = "# of deaths", ylim=c(0,600))
    
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


