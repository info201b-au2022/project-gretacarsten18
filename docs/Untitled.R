# Load the state data from
# "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv"

covid_19_us_states <- read.csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")
View(covid_19_us_states)

# Create a dataframe `wa_data` that is just data from Washington state
wa_data <- filter(covid_19_us_states, state=="Washington")
View(wa_data)

df <- arrange(wa_data, -new_deaths)
View(df)
# Create a `new_deaths` column that has new number of new deaths each day
wa_data <- wa_data %>%
  mutate(new_deaths = deaths - lag(deaths))
View(wa_data)

# What day had the highest number of new deaths?
high_point <- wa_data %>%
  summarize(new_deaths = max(new_deaths, na.rm=TRUE)) %>%
  select(date)
View(high_point)

# What is the fewest number of new deaths in a day?
low_point <- wa_data %>%
  summarize(new_deaths = min(new_deaths, na.rm=TRUE))
View(low_point)


# Pass the new_deaths column from wa_data to the plot function
ggplot(data = new_deaths)


washington_post <- read.csv("https://github.com/washingtonpost/data-police-shootings/blob/master/fatal-police-shootings-data.csv")
View(washington_post)



washington_post <- read.csv("https://github.com/washingtonpost/data-police-shootings/blob/master/fatal-police-shootings-data.csv")
View(washington_post)
