# part one script

install.packages("tidyverse")

library("tidyverse")

# In R we can perform computations

2 + 3
6*7
2^3

# Using the hash symbol so R ignores it

# Store values to retrieve them later

a <- 2*3
b = 2*3

# we can also perform logical operations
a == b
a > b
a < b 

# last one guess output:
# TRUE
# FALSE 
# logical(0)

# creating a vector of values

values <- c(1,2,3)

# using functions

sum(values)
mean(values)

# introducing the data frame

iris 

# We can look up any variables or function using the ? operator

?iris

# print the first few rows of a data frame

head(iris,n=3)

# View the whole dataframe

View(iris)

# summarize each column in iris

summary(iris)

# introduce different data types

# What data type is Species?

iris$Species

# Contingency analysis for a nominal variable example

table(iris$Species)
