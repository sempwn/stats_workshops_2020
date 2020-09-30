# part one script

install.packages("tidyverse")

library("tidyverse")

# In R we can perform computations

2 + 3
6*7
2^3

# Store values to retrive them later

a <- 2*3
b = 2*3

# we can also perform logical operations
a == b
a > b
a < b 

# creating a vector of values

values <- c(1,2,3)

# using functions

sum(values)
mean(values)



as_factor(iris$Species)
table(iris$Species)
