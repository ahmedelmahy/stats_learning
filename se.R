x=c(1,2,3,4)
y=c(2,3,6,10)
fit=lm(y~x)

variance=sum((y-mean(y))^2)

RSS=sum((fit$residuals)^2)

vare=var(fit$residuals)

se= 
  vare/RSS

var()
summary(fit)
