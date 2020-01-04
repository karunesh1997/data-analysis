np<-Newspaperdata[,-1]
model<-lm(sundaY~daily,data=np)
summery(model)
prediction<-predict(model,newdata=data.frame(daily=250))