library(ggplot2)
library(ggthemes)

#theme_set(theme_minimal())
#Histogram of hwy mpg values:
ggplot(mpg,aes(x=hwy)) + geom_histogram(bins=20,fill='red', alpha = 0.5)

#Barplot of car counts per manufacturer with color fill defined by cyl count
ggplot(mpg,aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl))) + theme_gdocs()

#Switch now to use the txhousing dataset that comes with ggplot2
#Create scatterplot of volume versus sales. Afterwards play around with alpha and color arguments to clarify information.
pl <- ggplot(txhousing,aes(x=sales,y=volume)) + geom_point(color='blue',alpha=0.5)

#Add a smooth fit line to the scatterplot from above. Hint: You may need to look up geom_smooth()
pl2 <- pl + geom_smooth(color='red')
print(pl2)