#factors

(x=1:69)
grades= sample(c('A','B','C','D','P','F'),size = length(x),replace = T,prob = c('0.1','.2','.25','.15','.2','.1') )

gender= sample(c('Male','Female'),size = length(x),replace = T,prob = c('.7','.3'))
?factor
grades1=factor(grades)

summary(grades1)
grades
grades2=factor(grades,ordered=T, levels = c('A','F','C','B','P','D'))
summary(grades2)

grades
