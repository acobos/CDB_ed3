# Solution to exercise 2.9

# Create a character vector x with two repetitions of the vector
# c(“never-smoker”, “ex-smoker”, “current-smoker”), and then define a factor from x

x <- rep(c("never-smoker", "ex-smoker", "current-smoker"), 2)
x
factor(x)

# Is the ordering of levels good enough? Redefine the factor with a better ordering
factor(x, levels = c("never-smoker", "ex-smoker", "current-smoker"))
