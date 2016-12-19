attach(Wage)
fit=lm(wage~age)
(cor(wage,age))^2

summary(fit)
#Residual se
RSS=sum((fit$residuals)^2)
sqrt(RSS/3000) #how much error for every point

#R^2
TSS=sum((wage-mean(wage))^2)
R2=(TSS-RSS)/TSS   #fraction of variance explained

#F statistic

(R2/1)*2996
