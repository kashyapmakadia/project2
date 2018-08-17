#clustering-iris data

head(iris)
str(iris)
table(iris$Species)
irisFeatures=iris[,-5]
head(irisFeatures)
iriskm1=kmeans(irisFeatures,centers=3)
iriskm1
iriskm1$centers
nrow(iris)
colMeans(irisFeatures[iriskm1$cluster==1,])
iriskm1$totss
(iris[iriskm1$cluster==1,])
iriskm1$size
iriskm1$cluster
plot(irisFeatures$Sepal.Length,col=iriskm1$cluster)
#sum of the distance within the cluster should be as less as possible
