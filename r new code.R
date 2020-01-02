#scatter plot matrix:
pairs(Toyoto_Corrola[,3:11])

#correlation matrix:
cor(Toyoto_Corrola[,3:11])

#regression model and summary
model.Toyoto_Corrola<-lm(Price~.,Toyoto_Corrola[,-7])
summary(model.Toyoto_Corrola)
car::vif(model.Toyoto_Corrola)

#diagnostic plots:residual plots,QQ-Plots,Std,residuals vs Fitted
plot(model.Toyoto_Corrola)

#residuals vs regressors
residualPlots(model.Toyoto_Corrola,tests=f)

#added variable plots
avPlots(model.Toyoto_Corrola)

influenceIndexPlot(model.car)

influenceInddexPlot(model.Toyoto_Corrola)
