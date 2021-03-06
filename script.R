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

## Get the mean GDP p.c. per continent  for year 1972 and commit change 

View(gdp_continent_1972 <- gapminder %>% 
       filter(year == 1972) %>% 
       group_by(continent) %>% 
       summarise(mean_gdp = mean(gdpPercap)))

## now we have synced R with GitHub 

## get pop_size through time for China and commit using R interface 

View(pop_size_china <- gapminder %>% 
  filter(country == "China") %>%
  select(year, pop))

## get max pop size per continent for year 2007 

View(pop_size_max_2007 <- gapminder %>%
       filter(year == 2007) %>% 
       group_by(continent) %>% 
       summarise(max_pop = max(pop)) %>% 
       select(continent, max_pop))

