#islr
library(ISLR)
data(Default)
head(Default)
str(Default)
range(Default$income) #771.9677  73554.2335
range(Default$balance) #0        2654.323
?Default
Defult
Default
table(Default$student)
table(Default$default)
t1=table(Default$default, Default$student)
addmargins(t1, FUN = median)


library(dplyr)
Default%>% group_by(student,default)%>% summarise(n())
Default%>%group_by(default)%>% summarise(n())
Default%>%group_by(default,student)%>%summarise(mean(income),mean(balance))
?summarise
?group_by
?glm



#logistic model
#lower the AIC better the model
#tto classify a data into the binary(lose or win, buy or not)

logit1=glm(default~income+balance+student,data=Default,family=binomial)
logit1
summary(logit1)
logit2=glm(default~balance+student,data=Default,family=binomial)
summary(logit2)

ndata1=data.frame(balance=mean(Default$balance),student="Yes")
(p1=predict(logit2,newdata = ndata1,type = 'response'))

