# Solution to exercise 2.8

# Using the rep() function, create numeric vector x with the sequence 1,2,3 repeated 3 times,
# (so 9 values)
x <- rep(1:3, 3)

# then define a factor from x with labels “good”, “neutral” and “bad”
factor(x, levels = 1:3, labels = c("good", "neutral", "bad"))
