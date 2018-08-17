library(NbClust)
data=iris[,-5]
head(data)
km1=kmeans(data,centers=1)
km2=kmeans(data,centers=2)
km2$tot.withinss
km2$withinss
sum(28.55208+123.79588)
km1$tot.withinss
km1$withinss
km3=kmeans(data,centers = 3)
km3$tot.withinss
km4=kmeans(data,centers = 4)
km4$tot.withinss
km5=kmeans(data,centers = 5)
km5$tot.withinss
km6=kmeans(data,centers = 6)
km6$tot.withinss
km7=kmeans(data,centers = 7)
km7$tot.withinss
km8=kmeans(data,centers=8)
km8$tot.withinss
km9=kmeans(data,centers = 9)
km9$tot.withinss





nc=NbClust(data,distance = "euclidean",min.nc = 3,max.nc = 15,method = "average")
#from GIT profile folder40A