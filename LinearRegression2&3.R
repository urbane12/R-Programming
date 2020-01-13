#Part 2&3 of linear regression
df <- read.csv('student-mat.csv', sep= ';')

library(caTools)

#set seed for random numbers
set.seed(101)

#We are trying to predict the final grade so we can split this sample as 70% training data and 30% as test data
sample <- sample.split(df$G3,SplitRatio = 0.7)
#70% of training dat to train
train <- subset(df,sample == T)

#30% will be test
test <- subset(df,sample == F)
#Train and Build model 
model <- lm(G3 ~ ., data = train)

#Predictions
G3.predictions <- predict(model,test)

results <- cbind(G3.predictions,test$G3)
colnames(results) <- c('predicted', 'actual')
results <- as.data.frame(results)
head(head(results))

#Take care of negative values
to_zero <- function(x){
  if (x <0){
    return(0)
  }else{
    return(x)
  }
}
#Apply the zero function 
results$predicted <- sapply(results$predicted,to_zero)

# Mean squared erro
mse <- mean((results$actual - results$predicted)^2)
print(mse)

#RMSE
print("Squared root of MSE")
print(mse^0.5)

#
SSE <- sum( (results$predicted - results$actual)^2)
SST <- sum( (mean(df$G3) - results$actual)^2)

R2 <- 1 - SSE/SST
print('R2')
print(R2)