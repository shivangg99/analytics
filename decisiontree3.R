# Decision Trees : - regression tree
?Carseats
library(ISLR)
data(Carseats)
#data1 = Carseats
head(data)

#Libraries for Decision Tree
library(rpart)
library(rpart.plot)

#Model
tree1 = rpart(Sales ~ . , data=data, method='anova' ) #regression tree uses annova
tree1
rpart.plot(tree1, cex=.8)

#this is large tree, so prune it: check cp
printcp(tree1)
#cp value should be chosen such that xerror is least
prunetree = prune(tree1, cp=0.024063)
#here we have selected a different value to simplify the tree

prunetree
rpart.plot(prunetree, nn=T)
#Interpretation
#if ShelveLoc=Good, and Price >= 109.5, sales predicted is 9.2
mean(data$Sales)
mean(data[data$ShelveLoc=='Bad'| data$ShelveLoc=='Medium',c('Sales')])
#improve the plot
rpart.plot(prunetree, nn=T, cex=.8, type=4)
#read this document to improve the plot
#https://cran.r-project.org/web/packages/rpart.plot/rpart.plot.pdf
#http://www.milbo.org/rpart-plot/prp.pdf

#Predict for test value
library(dplyr)
(testdata = sample_n(data,2))
(testdata2 = sample_frac(data,0.2))
(predictedSales=predict(prunetree, newdata=testdata, type='vector'))
cbind(testdata, predictedSales)
#next line will show error because we have to predict numerical value instead of class/ category, so type of response reqd is vector not class
(predict(prunetree, newdata=testdata, type='class'))

