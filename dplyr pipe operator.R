#Pipe operator
library(dplyr)
df <- mtcars

#Nesting in decescending order by mpg
result <- arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))

print(result)

#Rewriting above nesting with a more readble approach (This way takes more memory)
a <- filter(df,mpg>20)
b <- sample_n(a,size=5)
result <- arrange(b,desc(mpg))

#Using pip operator to do the nesting more efficiently
#Pip operator
#Data %>% op1 %>% op2 %>% op3:
df %>% filter(mpg>20) %>% sample_n(size = 5) %>% arrange(desc(mpg))
