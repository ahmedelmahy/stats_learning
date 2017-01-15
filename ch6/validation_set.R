#train=sample()
#dim(Hitters)
#sum(is.na(Hitters$Salary))
#newHit=Hitters[!is.na(Hitters$Salary),]

train=sample(263,131)
fit.subset=regsubsets(Salary~.,data=newHit[train,],nvmax = 19)
test.mat=model.matrix(Salary~.,data=newHit[-train,])
mse=0
testsalary=newHit$Salary[-train]
for (i in 1:19){
coefi=coef(fit.subset,i)
pred=test.mat[,names(coefi)] %*% coefi
mse[i]=mean((pred-testsalary)^2)
}
plot(1:19,mse)
#plot(summary(fit.subset)$bic)
#Hitters[-train,'Salary']
fit.subset$call[[2]]
