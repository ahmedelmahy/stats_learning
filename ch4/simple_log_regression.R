fit_glm=glm(default~balance,family='binomial')
summary(fit_glm); odds=fitted(fit_glm);df=data.frame(p,odds,balance); hist(p);mean(p);
log_odds_for_a_predicted_point=predict.glm(fit_glm,data.frame(balance=1827.509))
exp(log_odds_for_a_predicted_point)/(1+exp(log_odds_for_a_predicted_point))

odds[1]
balance[1]
prop.table(summary(default))

fit=lm(as.numeric(default)~balance);p2=fitted(fit);df2=data.frame(p2,balance)

ggplot(Default,aes(balance,default))+
  geom_point(col='red')+
  geom_line(aes(balance,odds+1),data=df)+
  geom_line(aes(balance,p+1,col=I('blue')),data=df)+
  geom_line(aes(balance,p2),data=df2)

summary(p)
summary(odds)

#qualitative predictor
chisq.test(default,student)
fit_glm=glm(default~student,family='binomial')
summary(fit_glm)
