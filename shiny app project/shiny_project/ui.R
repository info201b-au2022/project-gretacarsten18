library(plotly)
library(shiny)

my_ui <- fluidPage(
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
      plotlyOutput("distPie")
    )
  )
)

