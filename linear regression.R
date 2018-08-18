#Linear Regression

women
range(women$height) #58 72
range(women$weight) # 115 164
cor(women$height,women$weight)
#covarience shows the direction of the relation oof the two variable

cov(women$height,women$weight)

plot(women)
abline(lm(weight~height,data=women),col='red')
fit=lm(weight~height,data=women)
summary(fit)
#multiple Rsquared for single linear regression
#adjusted R-squared for the more than one inependent variable
#F-statistic shows that atleast one variable is related with the data

(ndata=data.frame(height=c(60.5,70.5)))
(predictedtw=predict(fit,newdata = ndata))
cbind(ndata,predictedtw)
?abline
abline(v='60.5',col='black')
abline(h='121.2083',col='black')
abline(v='70.5')
abline(h='155.7083')

