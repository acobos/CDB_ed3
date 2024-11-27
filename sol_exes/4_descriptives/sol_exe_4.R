# load packages
library(dplyr)
library(gapminder)
library(mosaic)

# look at the help of the gapminder dataset included in this package
?gapminder

# Subset the gapminder dataset for year 2007 and answer the following questions:
d <- gapminder %>% 
  filter(year == 2007)

# How many countries there are in each continent?
d %>% count(continent)

# What is the range of life expectancy (LE) values overall? and by continent?
favstats(~ lifeExp, data = d)                     # overall: 39.6 to 82.6
favstats(lifeExp ~ continent, data = d)           # see min and max

# Look at the distribution of life expectancy in all countries by producing a density plot. 
# Does it look symmetric?
gf_dens(~ lifeExp, data = d)                      # not at all!

# Inspection an appropriate graphic to investigate if life expectancy is similar in all continents
gf_boxplot(lifeExp ~ continent, data = d)         # VERY different, look at Africa!

# What was the life expectancy in Spain?
d %>% filter(country == "Spain")                  # 80.9 (not bad!)

# Is there a relationship between life expectancy and GDP per capita? If yes, is it linear? 
gf_point(lifeExp ~ gdpPercap, data = d, alpha = 0.3)       # yes, but not linear

# Is it similar in all continents?
gf_point(lifeExp ~ gdpPercap | continent, data = d, alpha = 0.3)

# based on the previous plot you may think the relationship looks different in 
# different continents, but...

gf_point(lifeExp ~ gdpPercap, data = d, alpha = 0.3, col = ~continent)

# the problem is that different continents have different range of values of both
# life expectancy and GDP per capita... therefore we are looking at different 
# parts of the non-linear relationship displayed in the firts graphic.  

# Now subset the gapminder dataset for Spain, France, Portugal, and Italy, 
# keeping all years (not only 2007!)
dd <- gapminder %>% 
  filter(country %in% c("Spain", "France", "Portugal", "Italy"))

# and use function gf_lines() to plot the evolution of life expectancy in these 
# countries (you will need to specify the group argument). 
gf_line(lifeExp ~ year, data = dd, group = ~ country, color = ~ country)

# How does Spain compare to France, Portugal, and Italy?
# consistently increasing in all four countries,
# Spain starts below France and Italy at the beginning of the period,
# but is progressively joining these two countries,
# and higher than Portugal
 