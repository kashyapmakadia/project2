#vector

#sequence of data elements of the same basic type

#scalar
x1=1
x2<-2
x1
x2
(x3=3)#assign and print

#vector
#combining vectors with c()
x = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
typeof(x) 
length(x)
x=1:100000
x
mean(x)


#vector using : operator
x = 1:7;x
y <- 2:-2;y

#vector using seq command
seq(1,3,by=0.2)
seq(1,5,by=.8)
seq(1,5,by=.3)
seq(1,3,10)
seq(1,3,.1)
seq(1,5,length.out = 4)
?sequence
?seq

seq(0, 1, length.out = 12)
seq(stats::rnorm(20)) # effectively 'along'
seq(1, 9, by = 2)     # matches 'end'
seq(1, 9, by = pi)    # stays below 'end'
seq(1, 6, by = 3)
seq(1.575, 5.125, by = 0.05)
seq(17) # same as 1:17, or even better seq_len(17)

seq(length.out=15)
seq(along.with=1)


#CHARACTER/ STRING
(x3=c('s1','s2','s3'))
class(x3)

(x4=1:10)
class(x4)




x=c(1,5,4, TRUE,"hello")
class(x)

