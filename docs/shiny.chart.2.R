
people_shot_by_race <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/Data.table.2.csv")
View(people_shot_by_race)


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
    ),
  mainPanel(
    plotOutput(outputId = "people_shot_by_race"),
    plotlyOutput("distPie")
  )
)

  #ask about what the correct output is for the table 
  #want to have a drop down bar of years, and pie chart shows the proportion 
  #of people killed by race. 
  
server <- function(input, output) {
  people_shot_by_race <- reactive({
    
  })
}

shinyApp(ui = my_ui, server = server)

  