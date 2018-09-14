newdata=subset(mtcars,mpg>=20 &mpg<=30,select=c(mpg,disp))
newdata

newdata=mtcars[order(mtcars$mpg),c('mpg','wt')]
newdata

install.packages("VIM")
library(VIM)
y=c(1,2,3,NA)
is.na(y)
