library(ISLR)
#Here we are checking the contents of the data with comparison of flowers 
print(head(iris))

#Scale the data and grab the variance of the data
stand.features <- scale(iris[1:4])
print(var(stand.features[,1]))

#join the variance data with species name column
final.data <- cbind(stand.features,iris[5])
#Do the trained test splits
set.seed(101)
library(caTools)
sample <- sample.split(final.data$Species, SplitRatio = 0.7)
train <- subset(final.data, sample == T)
test <- subset(final.data,sample == F)

# 
library(class)
#Predict species and print out
predicted.species <- knn(train[1:4],test[1:4],train$Species, k=1)
print(predicted.species)

#
print(mean(test$Species != predicted.species))

#Choose the K value by plotting out
predicted.species <- NULL
error.rate <- NULL
for(i in 1:10){
  set.seed(101)
  predicted.species <- knn(train[1:4], test[1:4], train$Species, k=i)
  error.rate[i] <- mean(test$Species != predicted.species)
}

#Plot this out using the elbow method
library(ggplot2)
k.values <- 1:10
error.df <- data.frame(error.rate,k.values)

#Plot data -- it will show the error rate drops down as we increase from 1 k to k-2 and then rises once k is greater than 5. Our optimal k value should be between 2-6 and we shall just choose 3
pl <- ggplot(error.df,aes(x=k.values, y=error.rate)) + geom_point()
pl <- pl + geom_line(lty='dotted', color='red')

print(pl)