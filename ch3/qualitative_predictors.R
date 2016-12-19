attach(Wage)

fit=lm(wage~age+race)
summary(fit)
summary(race)
rac=race
levels(rac)=c('white','black','asian','other')
levels(rac)
summary(rac)
length(rac)
rac_white=rep('no',3000); rac_white[which(rac=='white')]='yes'; rac_white=factor(rac_white)
rac_black=rep('no',3000); rac_black[which(rac=='black')]='yes'; rac_black=factor(rac_black)
rac_asian=rep('no',3000); rac_asian[which(rac=='asian')]='yes'; rac_asian=factor(rac_asian)
rac_other=rep('no',3000); rac_other[which(rac=='other')]='yes'; rac_other=factor(rac_other)

  
lm(wage~rac_white+rac_black+rac_asian+rac_other)
lm(wage~rac_white+rac_black+rac_other+rac_asian)
lm(wage~rac_white+rac_black+rac_asian)
lm(wage~rac_white+rac_black+rac_other)
lm(wage~rac_white+rac_asian+rac_other)
fit=
  lm(wage~rac_black)
lm(wage~rac_white)
summary(fit)
lm(wage~age+rac)