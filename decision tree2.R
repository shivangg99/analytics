
marry=sample(c('Yes',"No"), size=100, replace=T)

selfGender=sample(c('M',"F"), size=100, replace=T)

selfAge=ceiling(runif(100, 23,30))

selfEdn=sample(c(1,2,3,4), size=100, replace=T, prob=c(.1,.3,.4,.2))
spouseAge=ceiling(rnorm(100, mean=26,sd=5))
spouseEdn=sample(c(1,2,3,4), size=100, replace=T, prob=c(.1,.3,.4,.2))
spouseSiblings=sample(c(0,1,2,3), size=100, replace=T, prob=c(.2,.3,.3,.2))

spouseCity=sample(c('Rural',"Urban"), size=100, replace=T)
spouseSalary= ceiling(runif(100, 0,100000))

df = data.frame(marry, selfGender, selfAge, selfEdn, spouseAge, spouseEdn, spouseSiblings, spouseCity, spouseSalary )

head(df)

library(rpart)

dtree1 = rpart(marry ~ . , data=df)
dtree1
library(rpart.plot)
rpart.plot(dtree1,cex=0.8,nn=T)



ndata1=data.frame(selfGender='Male',selfAge=27,selfEdn=3,spouseAge=29,spouseEdn=4,spouseSiblings=4,spouseCity='Rural',spouseSalary=45000)

head(df)
ndata1

predict(dtree1,newdata=ndata1,type="prob")

dtree2 = rpart(marry ~ . , data=df, cp=-1)#(.) means all columns except marry
dtree2
rpart.plot(dtree2)

printcp(dtree2)
ptree2 = prune(dtree2, cp=0)
rpart.plot(ptree2)


#decision tree predict selection

df =  read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
library('rpart');library(rpart.plot)

df$rank=factor(df$rank)
df$admit=factor(df$admit)
dim(df)
dtree3=rpart(admit~gre+gpa+rank,data=df)

#plot the tree
rpart.plot(dtree3)
#print cp table
printcp(dtree3)
ptree=prune(dtree3,cp=0.023622)
rpart.plot(ptree)


ndata2=data.frame(gpa=c(3,4),rank=c('3','1'),gre=c(540,460))
ndata2
predict(ptree,newdata=ndata2,type='prob')



