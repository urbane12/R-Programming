
library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)
#Numbers only
num.cols <- sapply(df,is.numeric)
#filter
cor.data <- cor(df[,num.cols])

#print out the correlations
print(cor.data)

#Create a graph for the corplt with color correllation - this plot will show a perfect correlation 
print(corrplot(cor.data,method = 'color'))
