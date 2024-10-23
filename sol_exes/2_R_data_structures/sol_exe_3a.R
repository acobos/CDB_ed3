# Solution to exercise 2.3

# create cip vector
cip <- c("YAGU0741511000", "DEFO0702702000", "GITI1642102000",
         "AOPU1620401000", "BABE0740206000")

# Get a vector with the two digits corresponding to the year of birth.
# Is it a numeric vector?
y2 <- substr(cip, 6, 7)
y2
class(y2)


