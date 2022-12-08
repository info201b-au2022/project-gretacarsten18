fatal_police_shootings <- read.csv("https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v1/fatal-police-shootings-data.csv")
View(fatal_police_shootings)

dataframe1 <- fatal_police_shootings

people_shot_by_race <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/Data.table.2.csv")
View(people_shot_by_race)

dataframe2 <- people_shot_by_race

people_shot_by_month <- read.csv ("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/Data.Table.1.csv")
View(people_shot_by_month)

dataframe3 <- people_shot_by_month

t(people_shot_by_race)
View(people_shot_by_race)

table_of_police_brutality <- left_join(dataframe2$row_variable, dataframe3$column_variable)
View(table_of_police_brutality)


2018
slices <- c(459, 228, 167, 41, 88)
lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct)
lbls <- paste(lbls,"%",sep="")
pie(slices,labels = lbls, col=rainbow(length(lbls)))
main="Pie Chart of People Shot by Police by Race"


2017
slices <- c(458, 222, 180, 44, 77)
lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
pie(slices, labels = lbls, main = "Pie Chart of People Shot by Police by Race")


#ask about what the correct output is for the table 
#want to have a drop down bar of years, and pie chart shows the proportion 
#of people killed by race. 
2018

slices <- c(459, 228, 167, 41, 88)
lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
plot(slices, labels = lbls, main = "Pie Chart of People Shot by Police by Race")

2019
slices <- c(424, 251, 168, 42, 114)
lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
plot(slices, labels = lbls, main = "Pie Chart of People Shot by Police by Race")

2020 
slices <- c(459, 243, 171, 27, 120)
lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
plot(slices, labels = lbls, main = "Pie Chart of People Shot by Police by Race")


2021




shinyApp(ui = my_ui, server = server)

slices <- c("459", "228", "167", "41", "88")
lbls <- c("White", "Black", "Hispanic", "Other", "Unknown")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct)
lbls <- paste(lbls,"%",sep="")
pie(slices,labels = lbls, col=rainbow(length(lbls)))
main="Pie Chart of People Shot by Police by Race"


