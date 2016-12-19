fit=lm(mpg~horsepower)
plot(fit)
se(fit$residuals)
stud