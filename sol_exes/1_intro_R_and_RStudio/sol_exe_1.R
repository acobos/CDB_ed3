# Solution to exercise 1.1

# Look at the help of round() and read sections Description and Usage.
?round


# - What do you get when using floor(10/3) and ceiling(10/3)?
floor(10/3)        # the closest integer lower than 10/3
ceiling(10/3)      # the closest integer higher than 10/3

# - In the Usage section you will see round(x, digits = 0). 
#   What do you think digits = 0 means? 
#   (hint: read the explanation of round in the Description section).
# answer: as can be read in the Description section, round() rounds the values 
# in its first argument to the specified number of decimal places (default 0).
# therefore, in round(x, digits = 0), digits = 0 means zero is the default value.
# so that 
round(10/3, 4)         # rounds to 4 decimals
round(10/3)            # rounds to integer (0 decimals)


