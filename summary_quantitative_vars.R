library(tidyverse)
library(mosaic)

d <- rio::import("data/hta.xlsx", sheet = "data") %>% 
  mutate(sex = factor(sex, 1:2, c("male", "female")),
         smoke = factor(smoke, 1:4, c("current-smoker", "never-smoker", "ex-smoker", "unknown")),
         bmi = round(weight/height^2,1))

# summary stats
favstats(~ bmi, data = d)

# individual stats: beware of NA's!
mean(~ bmi, data = d)
sd(~ bmi, data = d, na.rm=TRUE)
mean(~ bmi, data = d, na.rm=TRUE)
median(~ bmi, data = d, na.rm=TRUE)
min(~ bmi, data = d, na.rm=TRUE)
max(~ bmi, data = d, na.rm=TRUE)


# other quantiles
quantile( ~ age, data=d)     
quantile( ~ age, data=d, probs = seq(.2, .8, .2))           # quintiles
quantile( ~ age, data=d, probs = seq(.1, .9, .1))           # deciles
quantile( ~ age, data=d, probs = c(.05, .95))               # percentiles 5 and 95


# Split by categorical var(s)
favstats(age ~ sex, data = d)
favstats(age ~ smoke, data = d)
favstats(age ~ sex + smoke, data = d)

mean(age ~ smoke , data = d, na.rm=TRUE)

quantile(age ~ sex, data=d)     
quantile(age ~ sex, data=d, probs = seq(.2, .8, .2)) 

