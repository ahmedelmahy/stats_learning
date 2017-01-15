#cross-validation for all subset selection
predict.regsubsets=function(object,newdata,id){
        form=as.formula(object$call[[2]])
        mat=model.matrix(form,newdata)
        coefi=coef(object,id)
        xvars=names(coefi)
        mat[,xvars]%*%coefi
}
       
k=10
folds=sample(1:k,nrow(Hitters),replace = TRUE)
summary(as.factor(folds))
cv.errors=matrix(NA,k,19,dimnames = list(NULL,paste(1:19)))

for(j in 1:k){
        best.fit=regsubsets(Salary~.,data=Hitters[folds !=j,],nvmax = 19)
        for (i in 1:19){
                pred=predict(best.fit,Hitters[folds==j,],id=i)
                cv.errors[j,i]=mean((Hitters$Salary[folds==j]-pred)^2)
                
        }
        
}

mean.cv.errors=apply(cv.errors,2,mean)
plot(mean.cv.errors,type='b')
