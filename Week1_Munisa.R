# Week 1 Practice Code

# Type your name here: Abdukarimova Munisa

# Complete these coding tasks, then submit your R file for another student to compare against the example output.

# Problem 1 

# Create a data frame that includes two columns, one named "Animals" and the other named "Foods". The first column should be this vector (note the intentional repeated values): Dog, Cat, Fish, Fish, Lizard

#The second column should be this vector: Bread, Orange, Chocolate, Carrots, Milk

#### Write your code below:

animals <- c("Dog", "Cat", "Fish", "Fish", "Lizard")

foods <- c("Bread", "Orange", "Chocolate", "Carrots", "Milk")

df <- data.frame(Animals = animals, Foods = foods)

print(df)

# Problem 2

# Using the data frame created in Problem 2, use the table() command to create a frequency table for the column called "Animals".

#### Write your code below:
freq_table <- table(animals)

print(freq_table)


# Problem 3

# Use read.csv() to import the survey data included in this assignment. Using that data, make a histogram of the column called "pid7".

data <- read.csv("C:/Users/user/Downloads/cces_sample_coursera (2).csv")
#### Write your code below:

hist(data$pid7, main = "Histogram of pid7")