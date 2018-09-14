library(dplyr)
mtcars
mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(mpg))
mtcars %>% group_by(gear,carb) %>% summarise(mean(mpg),max(mpg),min(hp))
mtcars %>% group_by(gear) %>% summarise_all(mean)
mtcars %>% filter(mpg>25) %>% summarise(mean(mpg)) 
pull(mtcars,gear)
?summarise_if
sales %>% group_by(region) %>% summarise_if(is.numeric,mean) 
nrow(mtcars %>% filter(disp>150) %>% select_all() )
