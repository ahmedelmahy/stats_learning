fit=lm(mpg~weight);plot(mpg~weight);abline(fit)
p=predict(fit,data.frame(weight=3000),interval = 'predict') 
au=Auto; p=0
for (i in 1:1000){
  s=sample(1:391,3)
  aus=au[s,]
  fit=lm(mpg~weight,data=aus)
  p[i]=predict(fit,data.frame(weight=3000))
}  
hist(p)
quantile(p,.025)
quantile(p,.975)
  








points(3000,p,pch="**",col='red')
summary(fit)

w=weight+displacement
plot(mpg~weight)
points(mpg~displacement/w)
