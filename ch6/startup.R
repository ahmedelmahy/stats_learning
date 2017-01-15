library(ISLR)
library(leaps)
library(glmnet)
library(pls)




data("Hitters")
Hitters=Hitters[!is.na(Hitters$Salary),] 
