library(shiny)


server <- function(input, output) {
  people_shot_by_race <- reactive({
    people_shot_by_race <- people_shot_by_race %>% filter(People.shot.to.death.by.U.S..police.2017.2022..by.race %in% input$people_shot_by_race)})
  filter("2018" %in% observe(input$people_shot_by_race))
  
  output$distPie <- renderPlot ({
    slices <- c("459", "228", "167", "41", "88")
    lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
    pct <- round(slices/sum(slices)*100)
    lbls <- paste(lbls, pct)
    lbls <- paste(lbls,"%",sep="")
    pie(slices,labels = lbls, col=rainbow(length(lbls)))
    main="Pie Chart of People Shot by Police by Race"
    
  })
}

