attach(Wage)
plot(wage~age);abline(lm(wage~age),col='red');summary(lm(wage~age))


test=0
for (i in 1:100){
s=sample(1:3000,1500)
dfs=Wage[s,]
fit=lm(wage~age,data=dfs)
test[i]=fit$coefficients[2]
}








hist(test)
sd(test)
mean(test)
mean(test<0)
summary(lm(wage~age))
