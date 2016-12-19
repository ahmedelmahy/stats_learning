#loading the packages
library(ISLR)
library(leaps)
library(ggplot2)
library(MASS)

#loading the data
data(Wage)  #Advertising
data(Auto)
attach(Auto)
wages=Wage[sample(1:3000,200),]
attach(wages)
data("Smarket")

