install.packages("dslabs")
#installs necessary data packages for this exercise

library("dslabs")
#loads the necessary data packages for this exercise

#help(gapminder)
#run the above if you want more info on the data we're using

str(gapminder)
#gives you an overview of the data

summary(gapminder)
#gives you a summary of the data

class(gapminder)
#tells you what kind of object gapminder is
#answer: a data.frame

data(gapminder)

africadata <- subset(gapminder, (continent == "Africa"))
#creates a new dataframe from a subset of the old one where the continent is Africa
str(africadata)
#Checks to make sure I have the correct number of observations

inf_LE <- data.frame(africadata$infant_mortality, africadata$life_expectancy)
#creates a new dataframe from these two columns of the africadata dataframe
#this one is for infant mortality and Life expectancy
str(inf_LE)
#This checks to make sure I got it right

pop_LE <- data.frame(africadata$population, africadata$life_expectancy)
#This creates a new dataframe for population and life expectancy data
str(pop_LE)
#This checks that I have everything right
