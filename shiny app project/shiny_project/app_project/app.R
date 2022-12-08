library(shiny)
library(ggplot2)
library(tidyverse)
library(readr)
library(plotly)

source("ui.R")
source("server.R")

shinyApp(ui = my_ui, server = server)