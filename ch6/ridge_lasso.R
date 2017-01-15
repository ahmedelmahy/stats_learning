#you need a vector and a matrix
x=model.matrix(Salary~.,data=Hitters)
y=Hitters$Salary
#-----------------
grid=10^seq(10,-2,length=100)
ridge.mod=glmnet(x,y,alpha=0,lambda=grid)
summary(ridge.mod)
names(ridge.mod)

sqrt(sum(coef(ridge.mod,3)^2))
d=coef(ridge.mod)
sqrt(sum(coef(ridge.mod)[-1,3]^2))
