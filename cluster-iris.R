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
