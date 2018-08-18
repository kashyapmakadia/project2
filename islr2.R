#

library(rpart)
library(rpart.plot)

#dataset
str(iris)
head(iris)
names(iris)
iris
summary(iris)
set.seed(1234)

ctree=rpart(Species~.,method = 'class',data=iris)
ctree
rpart.plot(ctree,main='Classification Tree',nn=T,type=4,extra=104,cex=1.2)
