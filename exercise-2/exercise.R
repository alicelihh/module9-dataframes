# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
employees <- c(paste("Employee", (1:100)))
employees

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
Salaries.2014 <- runif(100, 40000, 50000)

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
Salaries.2015 <- Salaries.2014 + runif(100, -5000, 10000)

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries <- data.frame(employees, Salaries.2014, Salaries.2015)
View(salaries)
# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- salaries$Salaries.2015 - salaries$Salaries.2014
View(salaries)
# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raised <- (salaries$raise > 0)
View(salaries)
### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)


# What was the 2015 salary of employee 57
salaries$Salaries.2015[57]

# How many employees got a raise?
count <- nrow(salaries[salaries$got.raised == TRUE, ])
count
# What was the value of the highest raise?
highest.raise <- salaries[salaries$raise == max(salaries$raise), "employee"]

# What was the "name" of the employee who received the highest raise?


# What was the largest decrease in salaries between the two years?


# What was the name of the employee who recieved largest decrease in salary?

# What was the average salary increase?


### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose based on how you generated their salaries?
