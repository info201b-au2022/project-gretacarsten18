left_join()
remove()

dataset_3 <- read.csv("https://www.statista.com/statistics/585152/people-shot-to-death-by-us-police-by-race/")
View(dataset_3)

df1 <- fatal.police.shootings.death 

table_of_shootings <- table(df1$fatal.police.shootings.death, df)

shootings <- read.csv("https://github.com/washingtonpost/data-police-shootings/blob/master/fatal-police-shootings-data.csv")
View(shootings)

fatal.police.shootings <- read.csv("https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/fatal-police-shootings-data.csv")
View(fatal.police.shootings)

data.frame1 <- fatal.police.shootings

table_of_shootings <- table(df$fatal.police.shootings, )

people_shot_by_race <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/statistic_id585152_people-shot-to-death-by-us-police-2017-2022-by-race.csv")
View(people_shot_by_race)

people_shot_by_month <- read.csv ("https://raw.githubusercontent.com/info201b-au2022/project-gretacarsten18/main/data/statistic_id585159_people-shot-to-death-by-us-police-2017-2022-by-month%20(2).%20data%20set%201.csv")
View(people_shot_by_month)

df1 <- shootings

table_of_police_brutality <- table(df$fatal.police.shootingsdf$people_shot_by_race, df$people_shot_by_month)
View(table_of_police_brutality)
