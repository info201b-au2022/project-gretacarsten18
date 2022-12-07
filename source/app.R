library(shiny)

# source the UI and Server file
source("app_ui.R")
source("app_server.R")

# Create the shinyapp
shinyApp(ui = ui, server = server)