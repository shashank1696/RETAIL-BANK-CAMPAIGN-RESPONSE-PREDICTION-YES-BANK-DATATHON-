yes_bank = setwd("H://R")
yes_bank = read.csv("Yes_Bank_Train.csv")
summary(yes_bank)
#checking for row NA values
yes_bank[!complete.cases(yes_bank),]
#checking for col NA values
yes_bank[,!complete.cases(yes_bank)]
#if missing values are present, just omit them
yes_bank = na.omit(yes_bank,na.action=TRUE)

#select numerical data
data= yes_bank[,c(3,6,9,12,14,17,19)]
boxplot(yes_bank)

boxplot(data[,c(3)])
boxplot(data[,c(6)]) #outliers are present

plot(data[,c(3)])
plot(data[,c(6)]) #outliers are present

#replacing the outliers
install.packages("data.table")
library(data.table)
outlierReplace = function(dataframe, cols, rows, newValue = NA) {
  if (any(rows)) {
    set(dataframe, rows, cols, newValue)
  }
}

outlierReplace(yes_bank, "credit_amount", which(data$credit_amount < 3.0), 3.0)
fivenum(data$credit_amount)
boxplot(data[,c(6)])
plot(data[,c(6)])
#scaling all the cols for uniformity
data = scale(data[,1:7])
#data mining
wss <- (nrow(data)-1)*sum(apply(data,2,var))
#k-means alg application
for(i in 2:21)wss[i] = sum(fit=kmeans(data,centers=i,21)$withinss)
#elbow graph
plot(1:21,wss,type="b",main="15 clusters",xlab="no. of cluster",ylab="with clsuter sum of squares")
fit = kmeans(data,3)
fit

cluster = kmeans(data,21)

fit$withinss
fit$betweenss
fit$size
fit$tot.withinss

#interpreted mined patterns
plot(data,col=fit$cluster,pch=21)

points(fit$centers,col=1:7,pch=3)
library(cluster)
library(fpc)
plotcluster(data,fit$cluster)
points(fit$centers,col=1:7,pch=22)

clusplot(data, fit$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)

data <- yes_bank[,c(3,6,9,12,14,17,19)]
data <- data.frame(data,fit$cluster)
cluster_mean <- aggregate(data[,1:7],by = list(fit$cluster),FUN = mean)
cluster_mean

summary(cluster_mean)

install.packages("tidyr")
library(tidyr)

# create dataset with the cluster number

center = cluster$centers
cluster <- c(3,6,9,12,14,17,19)
center_df <- data.frame(cluster, center)

# Reshape the data

center_reshape <- gather(center_df, features, values, credit_amount)
head(center_reshape)
View(yes_bank)
