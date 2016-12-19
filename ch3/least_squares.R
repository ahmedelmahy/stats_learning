

x=c(1,2,3,4)
y=c(2,3,6,10)
df=data.frame(B0=vector(),B1=vector(),RSS=vector())
l=1
s=seq(-10,10,.1)
for (B0 in s){
  for (B1 in s){
    yi=B0+B1*x
    RSS=sum((y-yi)^2)
    df[l,1]=B0
    df[l,2]=B1
    df[l,3]=RSS
    l=l+1
    print(B0)
  }
}
w=which.min(df$RSS)

plot(x,y)
lines(x,df$B0[w]+df$B1[w]*x)
fit=lm(y~x)
abline(fit,col='red')
