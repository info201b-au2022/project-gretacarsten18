library(shiny)

# Source files
source("chart2.R")


ui <- basicPage(
  h1("Average victims in 2017"),
  plotOutput("bar"),
  selectInput("Month",
              label = "Month",
              choices = c("January", "February", "March", "April", "May", "June", "July", "August", "October",
                          "September", "November", "December")
              
  )
)
