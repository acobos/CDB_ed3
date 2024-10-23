# Solution to exercise 1.2

# Start at fresh RStudio session (or empty the workspace) and write a script 
# in a new editor tab (File > New File > R script) to:

# Create an object with name my_weight taking the value of your body weight, in kilograms.
my_weight <- 75

# Create an object with name my_height taking the value of your body height, in meters 
# (remember to use the dot as decimal separator, e.g. 1.78)
my_height <- 1.78
  
# Compute the body mass index (by dividing the weight over the square of the height) 
# and assign it to an object with name BMI.
BMI <- my_weight / my_height^2

# Round the value of BMI to the first decimal.
round(BMI, 1)
