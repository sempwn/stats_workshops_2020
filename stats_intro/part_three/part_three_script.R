
# Load libraries using for today
library(tidyverse)

# Let's roll a dice in R! 
# A dice can gives values randomly from 1 to 6. Assuming a fair die this is with equal probability
# use the sample function to do this
sample(1:6)

# how to create a function. let's think about dice rolls
dice_rolls <- function(n){
  sum(sample(1:6,n,replace=TRUE))
}

# create a new data frame
dr_data <- tibble(ns = rep(1000,10000))

# create a new row describing the sample distribution
dr_data <- mutate(rowwise(dr_data),sample=dice_rolls(ns))

# plot the distribution
ggplot(aes(x=sample),data=dr_data) + geom_histogram(bins=100)
