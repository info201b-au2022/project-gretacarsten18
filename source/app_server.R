library(dplyr)
library(plotly)
library(ggplot2)
library(shiny)

data <- "~/Documents/info201/project-gretacarsten18/data/Data.Table.1.csv"
fname <- read.csv(data)


# Source functions and data
source("chart1.R")

server <- function(input, output) {
  
  output$intro_text_1 <- renderText({
    "Police"
  })
  
  output$intro_text_2 <- renderText({
    "
  })
  
}