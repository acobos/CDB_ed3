# Solution to exercise 2.3

# create cip vector
cip <- c("YAGU0741511000", "DEFO0702702000", "GITI1642102000",
         "AOPU1620401000", "BABE0740206000")

# Get a vector with the two digits corresponding to the year of birth.
# Is it a numeric vector?
y2 <- substr(cip, 6, 7)
y2
class(y2)


# Get a vector of four-digit years of birth by adding 1900.
1900 + y2                   # gives an error: we can`t do maths with character vectors!
1900 + as.numeric(y2)       # conversion to numeric is needed for this to work

# all this can be done in one step
yob <- 1900 + as.numeric(substr(cip, 6, 7))
yob

# get an estimate of their ages by 2050
2050 - yob

# Get a vector with first element "YAGU was born in 1974" (and analogous for the remaining persons)
sentence <- paste(substr(cip, 1, 4), "was born in", yob)
sentence
