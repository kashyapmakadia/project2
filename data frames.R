#data frames
(rollno=1:69)
(name=paste('student',1:length(rollno),sep = '-'))
?runif
(age=round(runif(length(rollno),18,25)))#runif used to develop random numbers
(gender=sample(x=c('M','F'),size =69, replace = T, prob = c(.7,.3)))
table(gender)
prop.table(table(gender))
(marks1=round(rnorm(69,mean = 60,sd=5)))
(marks2=round(rnorm(69,mean = 70,sd=7)))  

?df
(df=data.frame(rollno,name,gender,age,marks1,marks2))
head(df)
tail(df)
df[,2]
head(df[,6])
df[1:10,c('rollno','marks1','marks2')]
mean(df$marks1)
df[[2]]


#
str(df)
class(df)
summary(df)


#
nrow(df)
ncol(df)
dim(df)
names(df)

nrow(df[age>21&age<23,1:2])

df[age>22& gender=='M',1:6]
sort(df$age)
order(df$age)
df[order(df$gender,-df$age),]#deacreasing order of age and increasing order 
df[sort(df$age),]
aggregate(df$marks1,by=list(df$gender),mean)#works without the by command too
aggregate(df$marks2,by=list(df$gender),mean)
aggregate(cbind(df$marks1,df$marks2),by=list(gender),mean)
aggregate(cbind(marks1,marks2)~gender,data=df,FUN = mean)
names(df)
