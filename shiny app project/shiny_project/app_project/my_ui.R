library(plotly)
library(shiny)

interactive_page2 <- tabPanel(
  titlePanel("Pie Chart of People Shot by Race by the Police"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "People.shot.to.death.by.US.police.2017.2022..by.race",
        label = "Number of People shot to death by year",
        choices = c("2017", "2018", "2019", "2020", "2021", "2022")
      )
    )
    ,
    mainPanel(
      plotOutput(outputId = "people_shot_by_race"),
      plotlyOutput("distPie"),
    p("This pie chart displays the amount of people killed each year by skin color. On the side, you can select the year, and see the amount of people killed each year in the pie chart. It is important that we look at this data to see the what the proportions are for each skin color, and see how the number of people killed change throughout each year.")
    )
  )
)

