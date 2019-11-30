#Store the value of 10 into x
x <- 10
#Is x greater than 5
x > 5
#Is x greater than 20 and is x greater than 5
x < 20 & x > 5
#If x is less than 20 and x is greater than 5 reture TRUE if not return FALSE
(x < 20) & (x > 5)
#If x is less than twenty and x is greater than 5 and x is equal to 9
(x < 20) & (x > 5) & (x==9)
#Is x equal to 10
x == 10
#Is x equal to 100
x == 100
#Is x equal to 10 or is x 100
(x == 10) || (x == 100)
#Is x equal to 10,000 or is x equal to 100
(x == 10000) || (x == 100)
#Is 10 NOT equal to 1
!(10 == 1)
#Store mtcars into the data frame
df <- mtcars
#Within the dataframe pull all the mpg values that are greater than 20
df[df$mpg > 20, 'mpg']
#List each subset in the dataframe that has a mpg value greater than 20
subset(df, mpg > 20)
#Pull each subset within the dataframe that have mpg values greater than 20 and hp values greater than 100
df[ (df$mpg > 20) & (df$hp > 100),]


