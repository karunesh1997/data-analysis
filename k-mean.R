#generatimg 50 random numbers from uniform distribution(0,1)
x<- runif(50)
#generating 50 random numbers
y<- runif(50)
data<-cbind(x,y)
plot(data)
#kmeans clustring-4 clustring;k~sqrt(n/2)
km<-kmeans(data,4)
###############
install.packages("animation")
windows()
km<-kmeans.ani(data,4)
#########
#windows()
wss<-c()
for(i in 2;15)wss[i]<-sum(kmeans(data,centers=i)swithniss)
plot(1;15,was,type="b",xlab="no of clusters",ylab="avg distances")
