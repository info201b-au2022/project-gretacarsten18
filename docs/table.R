fatal_police_shootings <- read.csv("https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/fatal-police-shootings-data.csv")
View(fatal_police_shootings)

dataframe1 <- fatal_police_shootings

people_shot_by_race <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/statistic_id585152_people-shot-to-death-by-us-police-2017-2022-by-race.csv")
View(people_shot_by_race)

dataframe2 <- people_shot_by_race

people_shot_by_month <- read.csv ("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/statistic_id585159_people-shot-to-death-by-us-police-2017-2022-by-month%20(2).%20data%20set%201.csv")
View(people_shot_by_month)

dataframe3 <- people_shot_by_month

t(people_shot_by_race)
View(people_shot_by_race)

table_of_police_brutality <- left_join(dataframe2$row_variable, dataframe3$column_variable)
View(table_of_police_brutality)


