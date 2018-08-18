#Import from CSV

df1=read.csv('pdpu.csv')
df1
head(df1)
mean(df1$Marks1)

library(dplyr)
names(df1)
df1%>%filter(Marks1>70)%>% group_by(Course,Gender)%>%summarise(avgsubject1=mean(Marks1),maxmk1=max(marks1),minmk1=min(marks1))
df1%>%filter(Marks1>70)%>%group_by(Course,Gender)

df1%>%filter(Marks1>70&Marks1<85)%>% filter(Course=='Btech')
women
str(women)
plot(women)
mtcars
women
plot(x=women$wight,y=women$height)
plot(women,type='p',pch=18)
plot(women,type='l')
plot(women,type='b')
plot(women,xlim=c(30,100),ylim=c(-10,200),pch=10)
plot(x=women$weight,y=women$height,pch=15,xlab='weight',ylab = 'height',col='Green',cex=2,type = 'b')
abline(v=c(120,150),col='blue')
abline(h=c(60,65,69),col='red')
abline(lm(women$weight~women$height),col='red',lty=2,lwd=4)
boxplot(women$height,col='yellow')
hist(women$height)
hist(women$weight,col = c('red','blue','yellow','pink','magenta'))
hist(women$height,breaks = 5,col=1:100)
?rnorm     
x=rnorm(n=100,mean=50,sd=2)
hist(x)
range(x)
x1=sort(x)
x1[50]
median(x)
mean(x)
range(x)
hist(x,freq=F,col = 1:5)
lines(density(x),col='red')
plot(density(x),col='red')



#pie


x=c(10,20,40,50)
pie(x)
x1=x/sum(x)*100
x1
round(x1,0)
pie(x1)

#barplot

barplot(x,col = 1:4)
barplot(x,col = 1:4,horiz=T)
cor(mtcars)
pairs(mtcars[1:4])
pairs(mtcars)
options(mtcars[1:4])
names(mtcars)
pairs(mtcars[5:9])
head(mtcars)
names(head(mtcars))
cor(mtcars)
pairs(mtcars)
cor(women)
pairs(women)
names(mtcars)
?mtcars

#missing value
#create,detect,replace,impute,visulise
library(VIM)
(v1=c(1,2,NA,NA,5,6,7,NA))
is.na(v1)
v1=NULL
v1 #remove all values
(v1=c(1,2,NA,NA,5,6,7,NA))
sum(is.na(v1))
mean(v1)
mean(v1,na.rm=T)#remove and calc
(vla=na.omit(v1))
sum(vla) # now you can sum on non NA values
?na.omit

anyNA(v1)
?anyNA
anyNA(v1a)

v1
mean(v1,na.rm=T)
v1[is.na(v1)]
v1[is.na(v1)]=mean(v1,na.rm = T)
v1
