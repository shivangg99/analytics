newdata=subset(mtcars,mpg>=20 &mpg<=30,select=c(mpg,disp))
newdata

newdata=mtcars[order(mtcars$mpg),c('mpg,'wt')]
install.packages("VIM")
D