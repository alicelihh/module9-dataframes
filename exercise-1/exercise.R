# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
Seahawks <-c(30, 40, 50, 60, 70, 80)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
Opponent <- c(0, 1, 2, 3, 4, 5)

# Combine your two vectors into a dataframe
date <- data.frame(Seahawks, Opponent)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
diff <- c(Seahawks - Opponent)
# Create a new column "won" which is TRUE if the Seahawks won
won <- Seahawks > Opponent

# Create a vector of the opponent names corresponding to the games played
opp.names <- c("a", "b", "c", "d", "e", "f")

# Assign your dataframe rownames of their opponents
date <- data.frame(opp.names, Seahawks, Opponent,won)


# View your data frame to see how it has changed!
date
