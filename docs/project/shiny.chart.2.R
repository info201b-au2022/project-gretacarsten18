library(shiny)
library(ggplot2)
library(tidyverse)
library(readr)
library(plotly)

source("app_ui.R")
source("app_server.R")

shinyApp(ui = my_ui, server = server)