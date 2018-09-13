#vector----
a<-1:10
a
x=c(1,2,3)
x1=1:1000000
length(x1)
x2=seq(10,100,2)
x2
?seq
x3=seq(from=10,to=100,by=4)
x3

#numeric vector----
(marks=rnorm(30,mean=60,sd=10))
mean(marks)
median(marks)
mode(marks) #no mode
sd(marks)
var(marks)

summary(marks)
boxplot(marks)
length(marks)
range(marks)
str(marks)
class(marks)

hist(marks)
plot(density(marks))

#character vector----

(names=c('Ram','Shyam','Robin'))
length(names)
mean(names) #not possible
class(names)
summary(names)


gender=c('M','F','M')
summary(gender)
genderF=factor(gender) #categorical data conversioon
summary(genderF)


(grades=c('A','B','C','D','A','D','A'))
gradesF=factor(grades,ordered=T)
summary(gradesF)
gradesF


gradesF1=factor(grades,ordered=T,levels=c('D','B','A','C'))
summary(gradesF1)
gradesF1
table(gradesF1)
table(gender)

barplot(table(gradesF1))
pie(table(gradesF1))
median(gradesF1)


#logical vector----
(married = c(T,F,T,F,T,F))
#married
table(married)
summary(married)
class(married)
sum(married) #True means 1 False means 0

#subset of marks
marks
trunc(marks);round(marks);floor(marks);ceiling(marks)
(marks1=trunc(marks))
marks1[1]
marks1[18]
marks1[1:5]
(marks1[-2])
marks1[c(1,5,10,30)]
mean(marks1[c(1,5,10,30)])

(marks1[marks1>60])
marks1>60
length(marks1[marks1>60 & marks<75])

set.seed(1234)
gender2 = sample(c('M','F'),size=100000,replace=T,prob=c(0.3,0.7))
#gender2
table(gender2)
prop.table(table(gender2))







