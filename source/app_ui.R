library(shiny)

# Source files
source("chart2.R")


interactive_page_1 <- tabPanel(
  "Introduction",
  mainPanel(
    h1(strong("Introduction to Police Brutality in the United States")),
    h2("Authors"),
    p("Kevin Truong - ktruong0@uw.edu, Greta Carsten - gretcar1@uw.edu, Alexis Nguyen - alexngu8@uw.edu"),
    h2("Affiliation:"),
    p("INFO-201: Technical Foundations of Informatics - The Information School - University of Washington"),
    h2("Abstract:"),
    p("We are concerned with police brutality because people all over the world are victims of gun violence, and lose their life over something as little as getting pulled over for speeding or jaywalking. This is important to us because this cruelty shows discrimination and lack of advocacy for people of color. To address this concern, we plan to pull together datasets to educate society on what all of these deaths have in common and how they stem from police brutality and systemic racism."),
    h2("Key Words"),
    p("Police brutality, racism, mental health, unskilled, discrimination, gun violence"),
    h2("Introduction:"),
    p("For our project this quarter, we are looking at Police brutality within the United States, and more specifically we are going to look at the amount of people who are victims of gun violence by members of the local police in the United States. This is an extremely important issue as no one should be killed by the police, and we need to look at what similarities there are between data sets. This data allows for us to look at if there has been an increase in the number of people shot, if there are specific months of the year where there have been more people shot, or if there have been any specific years with more victims of gun violence by the police compared to other years. We intend to and look deeper at datasets to see where there is a correlation of factors as to why these people are being shot to death by the police."),
    h2("Problem Domain"),
    p("Information regarding police brutality within the United States is very difficult to obtain, but it is extremely important. The United States is a country where police brutality and racism is extremely present within the law enforcement system, and hundreds of people are killed every year."),
    p(strong("Direct and Indirect Stakeholders:"),
    p("Within police brutality: there are direct stakeholders and indirect stakeholders. The direct stakeholders of police brutality are the police officers and victims. These people are direct stakeholders because both are directly affected and connected to police brutality. The police are the one’s committing these actions and directly harming victims. Victims of police brutality because they are the ones being harmed by the police, and are suffering from this violence, and even dying. The indirect stakeholders are people who are indirectly related and affected by police brutality such as the policymakers, media, and prosecution authorities. There are many people directly impacted and affected by police brutality as well as indirectly impacted."),
    p(strong("Human Values:")),
    p("Every single person deserves to feel safe, and protected, and that is not what has been happening in the United States. Police brutality is a major human rights issue, and violation of human rights. Police brutality is when the police use unlawful use of force, and this can result in the police killing someone, or using ill-treatment or torture. Police often use this force as a way to discriminate against people of other skin colors (Police brutality). From past research, it is evident that Black Americans are shot and killed by police at a much higher rate compared to White Americans. Written in The Washington Post they say, “Although half of the people shot and killed by police are White, Black Americans are shot at a disproportionate rate. They account for less than 13 percent of the U.S. population, but are killed by police at more than twice the rate of White Americans. Hispanic Americans are also killed by police at a disproportionate rate (Fatal Force)”."),
    p(strong("Potential Benefits and Harms:")),
    p("By looking at this data, we can hopefully make societal change and improve our policies regarding accountability. This is an extremely important issue and it is important that we change the current system in place as soon as we can. We can compare data from other countries and compare it to data from the United States and take inspiration from other systems and policies in place. For example, the statistics and data regarding the United States is “astounding when compared to those of other developed nations, like those that make up the Organization for Economic Cooperation and Development (OECD) (Schwartz, 2020).” From this data, we can raise awareness and bring the information to the policymakers to make change."),
    h2("Research Questions:"),
    p("1. Why do some police overuse their authority? This is an important question to ask because some people might believe that policemen/women are using their authority to mentally and physically abuse people."),
    p("2. What can we as people do to decrease the number of deaths by police each year? This is a very open ended question because there are several ways to reduce the number of deaths, it just depends on the peoples’ view of police. Some examples would be defunding the police, better re-training of the force, etc."),
    p("3. How would defunding, or reforming the police force be more detrimental or beneficial for the public or for everyone in general? This question really focuses on the aftermath of defunding, or reforming the police. Some people might say that if we defund the police, then crime would all of a sudden significantly rise due to the fact that there are no more cops. Then again some people might say that because the police have been defunded, some people might actually feel safer?"),
    h2("Dataset:"),
    p("Our dataset is related to our domain by showing a graph of how many people were killed by police by year. The dataset shows every year how many people were shot and killed from 2017-2022 by month. Within the year of 2017, over 900 people were killed by police, followed by 2018 where also over 900 people were killed. Then in 2019, over 1000 people were killed, followed by 2020 where also over 1000 people were killed by police. Lastly, in 2021, over 1000 people once again were killed by police. In 2022, the data only goes to September, where over 780 people were killed. This dataset will enable us to compare year by year and month by month, then we can research what events happened that month that led to that certain amount of people being shot and killed. For example, the “black lives matter” protests occurred in 2020 and that was when people left and right were getting shot and abused by the police. This particular dataset was published by the Washington Post, as well as sourced and surveyed by the Washington Post as well. The data was recorded from 2017 to 2022 to inform the public of the amount of deaths that are caused by the hands of the police. This data set also gives us information on police treatment, it stated that people of color are treated significantly different than White Americans. A majority of black Americans think that black and white people do not receive the same treatment from police. Due to the police brutality, the public created a call for police reform. In 2019, it was found that police killings decreased by a quarter in police departments that implemented a policy that required police officers to use all other means before shooting. The people who would benefit from this dataset are people who are studying police culture and people who are doing research on police protests and police history. I believe this dataset is trustworthy because it was produced and published by a credible source that has a history of being, well, credible. We obtained this data by simply going on data research and typing in the topic of our project proposal and then it took us to statista."),
    h2("Expected Implications:"),
    p("If we are able to answer our research question there will be several implications for policymakers, and technologists. By compiling data about who and when people are shot, the skin color of people who are shot, and other factors, it will show policymakers how crucial, and important this issue is, and how they need to make policy changes, and improve education within the United States regarding police brutality. It is important for technologists and data scientists* to clearly communicate this information, as it is extremely important, and crucial. Clear communication of data will allow for policymakers to implement policies to make change, will raise awareness about police brutality, and will allow citizens to have a clear and deeper understanding of this issue. This data is very hard to get, so by having this data and information we will all have a deeper understanding of the systemic racism and discrimination in our society."),
    h2("Limitations:"),
    p("Some limitations we might encounter during our research are that some people might be honest with their outlook on police in general. Some folks might be scared to talk about the police in general and this might affect the data. They’re also cases where some police murders aren’t documented and that could mess with the data as well.")
   )
  )
)
  
  
interactive_page_2 <- tabPanel(
 "Average victims in 2017",
  plotOutput("bar"),
  selectInput("Month",
              label = "Month",
              choices = c("January", "February", "March", "April", "May", "June", "July", "August", "October",
                          "September", "November", "December"),
              
  )
)

interactive_page_3 <- tabPanel(
  "Pie Chart of People Shot by Race by the Police",
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "shot",
        label = "Number of People shot to death by year",
        choices = c("2017", "2018", "2019", "2020", "2021", "2022*")
      )
    ),
    mainPanel(
      plotOutput("distPie"),
      p("This pie chart displays the amount of people killed each year by skin color. On the side, you can select the year, and see the amount of people killed each year in the pie chart. It is important that we look at this data to see the what the proportions are for each skin color, and see how the number of people killed change throughout each year.")
    )
  )
)

interactive_page_4 <- tabPanel(
  "Conclusion",
  h2("Findings"),
  p("...."),
  h2("Discsussion"),
  p("...."),
  h2("Conclusion"),
  p("....")
)

interactive_page_5 <- tabPanel(
  "References",
  h2("Sources:"),
  p("“Fatal Force: Police Shootings Database.” The Washington Post, WP Company, 22 Jan. 2020, https://www.washingtonpost.com/graphics/investigations/police-shootings-database/."),
  p("“Police Brutality Is a Global Problem.” Amnesty International, 31 Oct. 2022, https://www.amnesty.org/en/what-we-do/police-brutality/#:~:text=The%20term%20%E2%80%9Cpolice%20brutality%E2%80%9D%20is,riot%20control%20agents%20at%20protests."),
  p("Schwartz, S. A. (2020). Police brutality and racism in America. Explore (New York, N.y.), 16(5), 280-282. https://doi.org/10.1016/j.explore.2020.06.010")     
)

ui <- navbarPage(
  "Police Brutality in the United States",
  interactive_page_1,
  interactive_page_2,
  interactive_page_3,
  interactive_page_4,
  interactive_page_5)

