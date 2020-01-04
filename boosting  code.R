#boosting

  ##Data Partition for model building
  inTraininglocal<-createDataPartition(iris$Species,p=.75,list = F)
  training1<-iris[inTraininglocal,]
  testing<-iris[-inTraininglocal,]
  #Model building 
  fittree <- C5.0(training1$Species~., data=training,trials=10)#trails-Boosting parameter
  #generate the model summery
  summary(fittree)
  #Predict for test data set
  pred<-predict.C5.0(model,testing[,-5])
  a<-table(testing$Species,pred)
  #Accuracy
  sum(diag(a))/sum(a)
}
summary(model)

