attach(Hitters)
names(Hitters)




n=as.character(names(Hitters)); n=n[n!='Division']
i=1
dev=0
nm=''
hit=Hitters[!is.na(Division),]
for  (feature3 in n){
for  (feature2 in n){
for  (feature in n){
        formulaa=paste("Division~",feature,'+',feature2,'+',feature3,collapse='')
        fit=lm(formulaa,data=hit)
        s=glm(formulaa,family='binomial')
        dev[i]=s$deviance
        nm[i]=paste(feature,feature2,feature3,sep='+')
        i=i+1
        print(paste(i,feature3))
}
}
}


length(dev)
length(nm)

h=c(1:length(nm)); names(h)=nm
plot(dev~h,col='blue',pch='.')


nm[which.min(RSS)]

r=regsubsets(Division~.,data=Hitters,nvmax=3,method='exhaustive')
summary(r)
