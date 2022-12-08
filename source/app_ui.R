library(shiny)

# Source files
source("chart2.R")



  
  
interactive_page_1 <- tabPanel(
 "Average victims in 2017",
  plotOutput("bar"),
  selectInput("Month",
              label = "Month",
              choices = c("January", "February", "March", "April", "May", "June", "July", "August", "October",
                          "September", "November", "December"),
              
  )
)

interactive_page_2 <- tabPanel(
  "Pie Chart of People Shot by Race by the Police",
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "shot",
        label = "Number of People shot to death by year",
        choices = c("2017", "2018", "2019", "2020", "2021", "2022*")
      )
    ),
    mainPanel(
      plotOutput("distPie"),
      p("This pie chart displays the amount of people killed each year by skin color. On the side, you can select the year, and see the amount of people killed each year in the pie chart. It is important that we look at this data to see the what the proportions are for each skin color, and see how the number of people killed change throughout each year.")
    )
  )
)

ui <- navbarPage(
  "title",
  interactive_page_1,
  interactive_page_2)
