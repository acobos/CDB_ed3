# Solution to exercise 2.7

# Create a dataframe with given data, in one step
d <- data.frame(first_name = c("Peter", "Paul", "Mary"),
                age = c(33, 29, 25),
                sex = c("male", "male", "female"))

# Extend this dataframe with additional variables:

# a) case_id containing numbers 1 to 3
d$case_id <- 1:3
d

# b) age_in_10y reflecting the age they will have in 10 years from now
d$age_in_10y <- d$age + 10
d

# c) older_than_30 as TRUE or FALSE
d$older_than_30 <- d$age > 30
d

# d) is_male as TRUE of FALSE
d$is_male <- d$sex == "male"
d

# e) Remove variable male from the dataframe
d$is_male <- NULL
d

# f) What is now the length of the dataframe? and what is the number of rows?
length(d)
nrow(d)
