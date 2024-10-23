# Solution to exercise 2.2

# `LETTERS` and `letters`are built-in vectors containing all the letters in the alphabet (print them in the console to see them)
LETTERS
letters

# What is `length(letters)`?
length(letters)                      # the number of elements in vector letters

# The `letter` in position 20
letters[20]

# A character vector with the first five `LETTERS` only.
LETTERS[1:5]

# A character vector whose first element is "A is an uppercase LETTER, and a is a lowercase letter" (and similar statements for the remaining letters). Hint: use the `paste()` function
paste(LETTERS, "is an uppercase LETTER, and", letters, "is a lowercase letter")

# What is the result of 1:length(LETTERS)?
1:length(LETTERS)       # a vector of natural numbers from 1 to length(LETTERS)

# A character vector whose first element is "A is in position 1 of the alphabet" (and similar statements for the remaining letters). Hint: use `1:length(LETTERS)` in the `paste()` function
paste(LETTERS, "is in position", 1:length(LETTERS), "of the alphabet")
