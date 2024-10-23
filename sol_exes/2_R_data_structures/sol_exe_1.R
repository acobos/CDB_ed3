# Solution to exercise 2.1

# create vectors
w <- c(47.3, 87.0, 80.9, 85.1, 95.4, 90.0, 70.3, 46.9, 86.7, 74.0)
h <- c(160, 165, 180, 170, 190, 180, 172, 156, 170, 169)

# compute bmi (and print to see results)
bmi <- round(w / (h/100)^2, 1)
bmi

# Verify that bmi is a numeric vector
class(bmi)

# comparisons produce logical vectors
bmi < 18.5

# you can sum logicals: TRUE will be taken as 1, and FALSE as 0)
sum(bmi < 18.5)          # number with low weight
sum(bmi >= 25)           # number with overweight
sum(bmi >= 30)           # number with obesity

mean(bmi)                # compute the mean
sd(bmi)                  # compute the standard deviation
