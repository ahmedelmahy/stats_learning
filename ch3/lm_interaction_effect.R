
fit=lm(wage~age);summary(fit);p=predict(fit,wages);df=data.frame(age,p)
fit2=lm(wage~health);summary(fit2);p2=predict(fit2,wages);df2=data.frame(age,p2)
fit4=lm(wage~age+health+age*health);summary(fit4)
fit3=lm(wage~health_ins);summary(fit3)
ggplot(wages,aes(age,wage))+
  geom_point()+
  geom_line(data=df,mapping = aes(age,p))+
  geom_line(data=df2,mapping = aes(age,p2))



