
library(gsheet)
url="https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"
omni3=as.data.frame(gsheet2tbl(url))
omni=omni3
head(omni)
names(omni)
mr=lm(sqty~price+promotion,data=omni)
summary(omni)#residual is the dufference between the predicted and actual values
summary(mr)

boxplot(omni$price,col='yellow')
boxplot(omni$sqty,col='light blue')
range(omni$price)# 59 99
range(omni$sqty)# 675 5120
range(omni$promotion)# 200 600
ndata1=data.frame(price=c(60,90),promotion=c(210,550))
(sqty=predict(mr,newdata = ndata1,type = 'response'))
cbind(ndata1,sqty)
car::crPlots(mr)
plot(mr)   # homoscedacisity and hetrosedacisity
plot(mr,which = 1)
plot(mr,which = 2)

par(mfrow=c(1,1))
plot(mr)
plot(density(residuals(mr)))


car::durbinWatsonTest(mr)
car::vif(mr)
sqrt(car::vif(mr))


##assumptions
#linearity
#homo/ equal variance
#autocorrelation-no
#outliers
#residual
#multicollinearity

#while doing linear regression there should not be any autocollinearity and multicollinearity


