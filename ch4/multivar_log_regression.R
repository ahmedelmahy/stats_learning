fit_glm=glm(default~balance+income+student,data=Default,family='binomial')
summary(fit_glm)
