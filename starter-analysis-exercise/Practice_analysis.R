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

#is.na(africadata)
#this creates a matrix of true false values where True=NA

#is.na(africadata$infant_mortality)
#lists NA in the vector africadata$infant_mortality

year_inf <- data.frame(africadata$year, africadata$infant_mortality)
#this creates a matrix with year and infant mortality
#complete.cases(year_inf)
#this lists which rows have a missing value
#year_inf2 <- year_inf[complete.cases(year_inf),]
#this removes all of the rows with missing data, which I need to list them instead
#which(is.na(year_inf), T)
#returns a column row pair of what is missing
year_inf[is.na(year_inf)] <- "A"
#this line rewrites the dataset, changing all NA's to A
missing <- subset(year_inf, (africadata.infant_mortality == "A"))
#this makes a new dataset with the subset function that pulls out all the years with A as a value
#This didn't work with NA which is why I changed it to A. Not the most elegant solution but it works
str(missing)
#this line is for checking

year2000 <- subset(africadata, (year == "2000"))
str(year2000)