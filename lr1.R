#linear regrssion

women
#predict weight for height=67.5
ex=lm(weight~height,data=women)
summary(ex)
ex
ex1=lm(height~weight,data=women)
ex1
summary(ex1)
ndata1=data.frame(height=c(60,70,65))

(p1=predict(ex,newdata = ndata1,type='response'))
cbind(ndata1,p1)
range(women$height)
range(women$weight)
ndata2=data.frame(weight=c(0,10,100))
(p2=predict(ex1,newdata = ndata2,type='response'))
cbind(ndata2,p2)


library(gsheet)
