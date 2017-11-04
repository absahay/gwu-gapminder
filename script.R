#load tidyverse
#make this wokring directory through blue "more" icon 
#create data and output folder
#download file from etherpad into data folder 

library(tidyverse) 
download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv",
              "data/gapminder.csv")

gapminder <- read_csv(file="data/gapminder.csv")

View(life_exp_continent <- gapminder %>% 
       group_by(continent) %>% 
       summarise (mean_life = mean(lifeExp)))

View(life_exp_canada <- gapminder %>% 
  filter(country=="Canada") %>%
  select(year, lifeExp))
  
