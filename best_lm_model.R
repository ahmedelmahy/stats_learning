dat=subset(Wage,select=c(-logwage,-region,-sex));dim(data)
big_fit=lm(wage~.,data=dat)
a=regsubsets(wage~.,data=dat,method='forward')
summary(a)


