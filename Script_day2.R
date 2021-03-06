#arithmic calculation
2+3
#assigning variables
x <-3
y <- 4
y
plot (x,y)
#plotting in R
x <- c(1,2,3)
y <-c(3,4,1)
plot (x,y)
#classes of varibales
class(x)
length(x)
class(y)
length(y)

#strings
str <-"this is my first script"
"this is my first script"->str2
class (str)
length (str)
#clear my histroy
rm (list = ls())
ls()
#function
?mean
?sd
?max
#total function
#name of function
#function of statement
#some argument
#body
#written statement (#optional)

my_sum <-function(input_1, input_2) {
  tot =input_1 + input_2
  return (tot)
}
# assigning values
input_1 = 3
input_2 = 4
input_1 + input_2
# calling a function
my_sum(input_1=2, input_2=4)

#Native function in R
sum(input_1+input_2)

#How about converting fah to kelvin
fah_to_kelvin <-function(temp){
  kelvin <- ((temp-32) * (5/9)) + 273.15
  return(kelvin)
 }
fah_to_kelvin(temp=32)
fah_to_kelvin(32)
fah_to_kelvin("test") #wrong input

new = "some test" -57

#how about converting kelin to celcisus
kel_to_cel <-function (temp) {
  celcisus <-temp-273.15
  return(celcisus)
}
kel_to_cel(0)

#now the exercise
#write a function to convert fah_to_celcisus
fah_to_celcisus <-function (temp){
  fah <- (temp-32)*(5/9)+32
  return(fah)
}
fah_to_celcisus(temp=32)

#Exercise 2
best_practices <- c("write", "program", "for", "people", "not", "computers")
asterix <- "***"
# So I want you to write a function called "fence" that takes two arguments and 
#a new vector somethig with astrix at the beginning and the end
#Expected output"
"***", write , "program", for, "people", "not", "computers" "***"

fence <- function (input_1, input_2){
  result <-c(input_1, input_2)
  return(result)
}
fence(input1 ="best_practice", input2 = asterix)

dir.create("data") #create new directory
?dir.create
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile ="data/gapminder.csv")
 #clear the functions

?dir.create
dat <-read.csv("data/gapminder.csv", header = TRUE)
head(dat)
summary(dat)

#write a function called analyze that takes country as argumen and displays mean, min
#and max lifeExp if that country
#subsetting the df

country_name <-subset(dat, dat$country=="Uganda")
head(country_name)
summary(country_name)

#calculate mean, min and max of lifeExp
mean(country_name [,5]
min(country_name [,5])
max(country_name [,5])
#function now
analyze <-function(countr) {# dont use y at the end of country since it is already defined in the data sheet
  country_name <-subset (dat, dat$country == countr)
  mean (country_name [,5])
  min(country_name [,5])
  max(country_name [,5])
  out <-c("Mean_le" = mean(country_name$lifeExp), "Min_le"=min(country_name$lifeExp), "Max_le"=max(country_name$lifeExp))
  print(out)
  plot(country_name$year, country_name$lifeExp, xlab ="Year", ylab = "Life Expectancy", main = countr)
    }
analyze("Uganda")
plot(country_name$year, country_name$lifeExp, xlab ="Year", ylab = "Life Expectancy", main = countr)
analyze("Albania")

#print(mean(country_name[,3]))
#print(min(country_name[,3]))
#print(max(country_name[,3]))
out <-c("Mean_le" = mean(country_name$lifeExp), "Min_le"=min(country_name$lifeExp), "Max_le"=max(country_name$lifeExp))
mean(country_name$lifeExp)
mean(country_name [,5])
analyze("Uganda")

#modify the analyze function to generate a plot with "year" on x-axis and :lifeExp" on
#the y axis

gapminder_67_07 <-subset (dat, dat$year) == 1967 : == 2007)
