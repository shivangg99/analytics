age=ceiling(rnorm(3000,mean=22,sd=2))
marks=ceiling(rnorm(3000,mean=65,sd=10))
age
df=data.frame(age,marks)
df
km=kmeans(df,center=4)
km
km$withinss
km$tot.withinss
km$betweenss
km$iter
km$centers



data("iris")
iris
table(iris$Species)
data=iris[-5]
data
km1=kmeans(data,centers=1)
km1$tot.withinss

km1=kmeans(data,centers=2)
km1$tot.withinss

km1=kmeans(data,centers=3)
km1$tot.withinss

km1=kmeans(data,centers=4)
km1$tot.withinss

km1=kmeans(data,centers=5)
km1$tot.withinss

#library for optimum no. of clusters
library(NbClust)

nc = NbClust(data, distance="euclidean",min.nc=2, max.nc=15, method="average")

kiris = kmeans(data, centers=3)
kiris$centers

cbind(iris$Species, data, kiris$cluster)


names(mtcars)
data2 = mtcars[c('mpg','disp','hp','wt')]
head(data2)
nc = NbClust(data2, distance="euclidean",min.nc=2, max.nc=15, method="average")
det(as.matrix(mtcars))
?na.action
km3= kmeans(data,centers=3)
km3$tot.withinss

cbind(km1$tot.withinss, km2$tot.withinss, km3$tot.withinss, km4$tot.withinss,km5$tot.withinss)

