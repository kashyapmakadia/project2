#matrix
?matrix
(x=1:24)
(m1=matrix(x,nrow=4))
m1[1,2]
m1[seq(1,4,2),seq(1,6,2)]
rank(m1)
m1=matrix(x,nrow=6,byrow = T)
m1
(m1=matrix(x,ncol = 4,byrow = F))
m1[,2]
m1[,c(1,3,5)]
(x=seq(1,500,21))
(m2=matrix(x,nrow=4,byrow = T))
mean(m2[,1])
mean(m2[m2>15])
class(m1)
