# Solution to exercise 5.3


# reading data
library(readr)
d <- read_delim("https://raw.githubusercontent.com/acobos/Datasets/master/Mysterious_event.txt",
                delim = "\t", escape_double = FALSE,
                trim_ws = TRUE)

# How any people were involved in this event?
nrow(d)

# Explore the univariate distribution of the four variables with bar plots. 
library(ggformula)

# Did most of these people survive?
gf_bar(~ Survival, data = d)             # about 1/3 survived.

# Was Sex evenly distributed? 
gf_bar(~ Sex, data = d)                  # no, most were male.

# What about Age
gf_bar(~ Age, data = d)                  # very few children.

# What about Class?
gf_bar(~ Class, data = d)                # few in classes 1 or 2, 
                                         # many in classes 3 or S.
# What are the levels of the Class variable?
# 1, 2, 3 or S.

# Produce stacked barcharts to explore Survival by Class, by Age, and by Sex. 
# Did children survive more than adults? 
gf_props(~ Age, data = d, 
         fill = ~Survival, position = "fill")      # yes.

# Did females survive more than males? 
gf_props(~ Sex, data = d, 
         fill = ~Survival, position = "fill")      # yes!

# What were the Classes surviving the most and the least?
gf_props(~ Class, data = d, 
         fill = ~Survival, position = "fill")      # the most: 1, followed by 2.
                                                   # the least: 3 and S.

# Produce contingency tables to explore Age by Class and Sex by Class. 
# Are Age and Sex evenly distributed among Classes?
library(mosaic)
tally(Age ~ Class, data = d, format = "percent")   # no, no children in S,
                                                   # very few in 1, more in 2 and 3.

tally(Sex ~ Class, data = d, format = "percent")   # no, fewer females in S,
                                                   # more in 1, even more in 2,
                                                   # even more in 3.

# Do you guess what is this historical event?
# let's see if you can guess