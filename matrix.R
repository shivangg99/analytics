#matrix
?matrix
(m1=matrix(data=1:12,nrow=4,byrow=FALSE))

marks3=floor(runif(30,50,90)) #random uniform 
(m2=matrix(data=marks3,nrow=6,byrow=F))

colSums(m2)
rowSums(m2)
colMeans(m2)
rowMeans(m2)
sum(m2)
m2[m2>70]
m2
m2[1,]
