file=file.choose()
load(file)
attach(Xy)
l=lm(y~X1+X2)
summary(l)$coef

matplot(Xy,type="l")
dim(Xy)
plot(1:1000,X1,type="l")
lines(1:1000,X2,type='l',col='red')
lines(1:1000,y,type='l',col='green')
#There's probably a better way for doing it
i=list(1:100,101:200,201:300,301:400,401:500,501:600,601:700,701:800,801:900,901:1000)
fin_fn=function(data,index){
  i2=unlist(i[index])
  return(coef(lm(y~X1+X2,data=data,subset=i2)))
}

boot(data.frame(a=1:10),fin_fn,R=1000)
