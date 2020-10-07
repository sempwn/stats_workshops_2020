
# Load and install libraries
install.packages("arules")
install.packages("gapminder")

# For linear regression model use the gapminder library to predict life expectancy


# For logistic regression model use Adult income UCI (predicting outcome over 50k)
data("AdultUCI")

# plot something
ggplot(aes(x=fnlwgt),data=AdultUCI) + geom_histogram()
