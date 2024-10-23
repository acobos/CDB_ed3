# Solution to exercise 2.10

# Create two Date objects: one with today’s date, and the other with your date of birth.
today <- Sys.Date()
today
class(today)

dob <- as.Date("1958/03/05")
dob
class(dob)


# Then, use these objects to:

# a) Compute your age in days
today - dob

# b) Compute your age in (whole) years
floor(as.numeric(today - dob) / 365.25)

# e) Print your date of birth, including the weekday the full name of the month,
# and the year with four digits
format(dob, "%A %d of %B, %Y")
