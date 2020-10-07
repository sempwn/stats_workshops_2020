
# Install data libraries for the session

# collection of economic data
install.packages("Ecdat")
library(Ecdat)
library(tidyverse)





# continuous measure
x <- rnorm(11)

# For mean
# 1. take the sum
sum(x) 
# 2. Divide sum by total number
sum(x)/11

# 3. check same as the mean
mean(x)

# example 2: look at price

# introduce dataset
?diamonds
prices <- diamonds$price

# look at distribution - histogram of prices
hist(prices)

mean(prices)
# For median

# 1. sort data
sorted_x <- sort(x)
sorted_x

# 2. Take value half-way along data
sorted_x[6]

# 3. check matches median
median(x)

# 4. What if even number in sample?
median(1:4)

# compare to diamond data set
median(prices)

# robustness of median
x_large <- c(x,100)

mean(x_large)
median(x_large)
mean(x)
median(x)


# Spread

# variance

# 1. calculate by hand
sum((x - mean(x))^2)/10

# 2. calculate using variance
var(x)

# 3. Convert to same units
sqrt(var(x))
sd(x)

# inter-quartile range
x <- rnorm(13)

# 1. sort the data
sorted_x <- sort(x)
sorted_x
# 25% along 
sorted_x[4]

# 75% along
sorted_x[10]

# difference between the two
sorted_x[10] - sorted_x[4]

quantile(x,c(0.25,0.75))
IQR(x)

# co-linear data
x <- rnorm(10)
y <- x + rnorm(10)

# score x and y
scale(x)
scale(y)

sum(scale(x)*scale(y))/9

cor(x,y)

# optional: Anscombe quartet
mean(x1)
mean(y1)
sd(x1)
sd(y1)
cor(x1,y1)

plot(anscombe$x1,anscombe$y1)

plot(anscombe$x2,anscombe$y2)


# Nominal data - data frequencies
# example one
mytable <- table(diamonds$cut)

mytable

# add in sum column
addmargins(mytable)

# get proportions
proportions(mytable)

# tidy up output
round(100*proportions(mytable),2)

# EXTRA WORK
# EXTRA: more than one variable - the contingency table


# create contingency table and clarity
mytable <- table(diamonds$cut,diamonds$clarity)

addmargins(mytable)

proportions(mytable)

# Example 3 using the College admittance data set (only if there is time)
DF <- as.data.frame(UCBAdmissions)
tbl <- xtabs(Freq ~ Gender + Admit, DF)

# proportions give table as a proportion either by rows or by columns
# if select gender then for each gender can see proportion admitted and proportion rejected
proportions(tbl, "Gender")


# Optional extra: introducing the mutate verb
data <- Wages

data <- mutate(data,wage = exp(lwage))

# Plot the mean and median
ggplot(aes(x=wage),data=data) + 
  geom_density() + 
  geom_vline(aes(xintercept=mean(wage)),
             color="red") + 
  geom_vline(aes(xintercept=median(wage)),color="blue")
