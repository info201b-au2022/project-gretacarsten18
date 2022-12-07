library(shiny)

# Source files
source("chart1.R")

chart1 <- tabPanel(
  h4("Chart 1: Scatterplot"),
  h1("Police Brutality from 2017 - 2021"),
  p("This scatterplot shows the rates of Police Brutality per year from 2017 - 2021."),
  sidebarLayout(
    sidebarPanel(
      selectInput(
  
        )
    )
 )
)
ui <- navbarPage(
  title = "Police Brutatlity throughout the years",
  windowTitle = "How police brutatliy affects different races",
)
