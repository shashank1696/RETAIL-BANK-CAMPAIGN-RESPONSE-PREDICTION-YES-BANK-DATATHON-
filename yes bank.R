setwd('H://R//YesBank')
train<-read.csv('Yes_Bank_Train.csv')
test<-read.csv('Yes_Bank_Test_int.csv')
summary(train)
str(train)
mod<-lm((credit_amount)~.,data=train)
summary(mod)
plot(mod$fitted.values,mod$residual)
library(ggplot2)
library(car)
qqPlot(mod$residuals)
predicted<-(mod$fitted.values)^(1.5)
actual<-train$credit_amount
dat<-data.frame(predicted,actual)
library(Metrics)
a=rmse(actual,predicted)
a=sqrt(mean((mod$residuals)^(1.5)))
s=(1-a/100000)*100
k<-(mod$residuals)^2
write.csv(dat,'s.csv',row.names = F)
credit_amount<-predict(mod,newdata = test)
sd<-data.frame(test$serial.number,(credit_amount)^(1.5))
write.csv(sd,'submission.csv',row.names = F)
install.packages("rmse")
install.packages("Metrics")
library(Metrics)
rmse(actual,predicted)




