
#Data Prepartion
mydata1<-read.csv(library(readr)
                  Universities <- read_csv("C:/Users/Ratnesh/Universities.csv")
                  View(Universities)


mydata <- scale(Universities[,2:7])

#Computing the distance natrix
d <- dist(mydata, method = "euclidean")

# Building the algorithm # try with 'centroid'
fit <- hclust(d, method="average")

# display dendogram
plot(fit)

# cut tree into 5 clusters
groups <- cutree(fit, k=4)

install.packages("animation")




# draw dendogram with red borders around the 5 clusters 
rect.hclust(fit, k=4, border="red")

#Attach the cluster numbers to Uni
clusters=data.frame('Uni'=mydata1[,1],'Cluster' =groups)


groups <- cutree(fit, k=4)
rect.hclust(fit, k=4, border="red")




