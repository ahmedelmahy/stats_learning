plot(Auto)
plot(mpg~horsepower)
hh=log(horsepower)
fit=lm(mpg~hh);summary(fit);abline(fit,col='blue')
h2=horsepower^2
h3=horsepower^3
h4=horsepower^4
h5=horsepower^5
h6=horsepower^6
fit2=lm(mpg~horsepower+h2+h3+h4+h5+h6);summary(fit2);p=predict(fit2,Auto);
            points(horsepower,p,col='green',pch='*')

hh=log(horsepower)
fit=lm(mpg~horsepower)
plot(mpg~horsepower); abline(lm(mpg~horsepower))
p=predict(fit,Auto)
points(horsepower,p,col='green',pch='*')
plot(p,fit$residuals)
lines(horsepower,p,col='red')
plot(fit)
plot(p~horsepower)
anova(fit,fit2)
