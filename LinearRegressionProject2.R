#EDA
library(ggplot2)
library(dplyr)
#Linear Regression Project
bike <- read.csv('bikeshare.csv')

#convert to postxct()
bike$datatime <- as.POSIXct(bike$datatime)

#Featyre engineering portion
bike$hour <- sapply(bike$datatime,function(x){format(x,"%H")})
bike$hour <- sapply(bike$hour,as.numeric)
#Build Model of prediction based on temp feature
model <- lm(count ~. -casual -registered -datatime - atemp,bike)
#
print(summary(temp.model))