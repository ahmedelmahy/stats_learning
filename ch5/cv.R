seeds=list()
end=40
for (j in 1:40){
set.seed(1)
train=sample(392,392/1.1)
mse=0
for (i in 1:5){
fit=lm(mpg~poly(horsepower,i),data=Auto,subset = train)
yhat=predict(fit,Auto[-train,])
y=Auto$mpg[-train]
mse[i]=mean((y-yhat)^2)
}
seeds[[j]]=mse
}
seedsframe=as.data.frame(seeds)
plot(1:5,y=seedsframe[,1])
lapply(seedsframe,function(i){
                  lines(x=1:5,y=i)})

c=0
end=15
for (i in 1:end){
glm_fit=glm(mpg~poly(horsepower,i),data=Auto)
cv=cv.glm(Auto,glm_fit,K=10)
c[i]=cv$delta[1]
print(i)
}
plot(1:end,c)