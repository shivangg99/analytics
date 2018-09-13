#dataframe

#rollno.,name ,batch,gender,marks,marks2

(rollno.=1:30)
(name=paste('student',1:30,sep='-'))
(batch=sample(c(2016,2017,2018),size=30,replace=T))
table(batch)
?sample
(marks1=trunc(rnorm(30,mean=65,sd=7)))
(marks2=trunc(rnorm(30,mean=60,sd=10)))
df=data.frame(rollno.,name,batch,gender,marks1,marks2,stringsAsFactors = F) 
df #by default all are created as factors
summary(df)  
str(df)
df$gender=factor(df$gender)
str(df)
df$batch=factor(df$batch,ordered=T,levels=c('2016','2017','2018'))
str(df)
df
summary(df)
df.rollno=as.character(df$rollno.)
summary(df)
str(df)
head(df)   #first 6 rows
tail(df,2)   #last two rows
dim(df) #dim of matrix
names(df)     #name of cols

df[1:2,1:4]
df[c(1,3),c(1,4,5,6)]
df[df$gender=='M',3:5] #Males,display 3 to 5 col)
df[df$gender=='M'& df$marks1>70,]
length(df)
nrow(df)
nrow(df[df$gender=='M',])
summary(df)


#sort
sort(df$marks1)
order(df$marks1)
df[order(df$marks1),] #ascending order of marks if students in matrix

rev(sort(df$marks1))
df[order(df$gender,df$batch),] ##ascending order of gender (alphabet wise) and batch


aggregate(df$marks1,by=list(df$batch),FUN=mean)
aggregate(marks1~batch,data=df,FUN=mean)
aggregate(cbind(marks1,marks2)~batch,data=df,FUN=mean)
df2=aggregate(cbind(marks1,marks2)~batch+gender,data=df,FUN=mean)


aggregate(cbind(marks1,marks2)~batch+gender,data=df,FUN=max)

df
write.csv(df,"./Data/bitsgoa.csv")
df3=read.csv("./Data/bitsgoa.csv")
head(df3)

df3=df3[,-1]
head (df3)



install.packages('amap')


library(amap)


library(help=amap)
library(dplyr)
install.packages('dplyr')

library(googlesheets)
