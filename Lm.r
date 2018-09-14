women
plot(women$height,women$weight)
cor(women$height,women$weight)
cov(women$weight,women$height)

#create linear model
fit1=lm(weight~height,data=women)
summary(fit1)
range(women$weight)
#weight=-87 + 3.45*height

fitted(fit1)
names(fit1)
predict(fit1,newdata=data.frame(women[,1]),type="response")
cbind(women,fitted(fit1),residuals(fit1))
ndata1=data.frame(height=62.5)
predict(fit1,newdata=ndata1)
ndata1
ndata1=data.frame(height=c(61.5,62.5,63.5))
ndata1
cbind(ndata1,predictwt=predict(fit1,newdata=ndata1))
names (mtcars)

fit2=lm(mpg~wt+hp,data=mtcars)
summary(fit2)

#mpg = -37.22727 -3.87*wt -0.03177*hp

mtcars
ndata2=data.frame(hp=c(98.5,106),wt=c(2.5,4.6))
cbind(ndata2,pred=predict(fit2,newdata=ndata2))

#finding the best suitable variables for regresssion
  #check lm 25c in git repositiry