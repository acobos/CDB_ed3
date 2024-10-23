library(tidyverse)
library(mosaic)

d <- rio::import("data/hta.xlsx", sheet = "data") %>% 
  mutate(sex = factor(sex, 1:2, c("male", "female")),
         smoke = factor(smoke, 1:4, c("current-smoker", "never-smoker", "ex-smoker", "unknown")))


# counts
tally(~ sex, data = d)
tally(~ smoke, data = d)

# percentages
tally(~ smoke, data = d, format = "proportion")
tally(~ smoke, data = d, format = "percent")

# contingency tables
tally(smoke ~ sex, data = d)
tally(smoke ~ sex, data = d, format = "percent") %>% round(1)

# add column margins
tally(smoke ~ sex, data = d, format = "percent", margins = TRUE) %>% round(1)

# use available data only
tally(smoke ~ sex, data = d, format = "percent", margins = TRUE, useNA = "no") %>% round(1)



