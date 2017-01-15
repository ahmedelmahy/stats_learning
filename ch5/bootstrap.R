

alpha_fn=function(data,index){
X=data$X[index]
Y=data$Y[index]
return(( var ( Y ) - cov (X , Y ) ) /( var ( X ) + var ( Y ) -2* cov (X , Y ) ))
}


#using the boot()
b=boot(Portfolio,alpha_fn,R=1000)
plot(b)

#------------------------------------------------estimate the CI of a lm using boot()
plot(mpg,horsepower)
fit=lm(mpg~horsepower);summary(fit)

fit_fn=function(data,index){
  return(coef(lm(mpg~horsepower,data=Auto,subset=index)))
}

b=boot(Auto,fit_fn,R=1000)
qqnorm(b$t[,1])
plot(b)
summary(fit)

