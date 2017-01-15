#bootstrap is only about sampling from the data, find the estimate, and its mean and SD which will be the SE of the estimate.
s_min=1
for (m in 1:10000){
x=sample(1:100,50)
y=sample(1:100,50)

a=.5
a_seq=seq(.01,.99,.01)
#the outcome
i=1
for (a in a_seq){
v[i]=var(a*x+(1-a)*y)    #340.9
i=i+1
}
#plot(v~a_seq)
#abline(v=a_seq[which.min(v)])
s_min[m]=a_seq[which.min(v)] #doing it that way is unrelated to boot strap
#best_a1[j]=(var(y)-var(x,y))/(var(x)+var(y)-2*var(x,y))
print(m)
}
hist(s_min)
mean(s_min)
sd(s_min)
