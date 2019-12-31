#Built in R Features and functions
#seq(): Create sequence
#sort(): sort a vector
#rev(): revrse elements in object
#str():show the structure of an object
#append(): merge objects together (works on vectors and lists)
#Checking Data Type
#is.
#Convert data types
#as.
#Sample function to get random numbers: print(sample(x=1:100,3))

#Apply Function: storing vector with 5 slots into v and then inserting random numbers to each element
v <- c(1:5)
addrand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
}
print(addrand(10))

result <- lapply(v, addrand)
print(result)

#Store vector with a range of five, in each element mutiply store variable by 2 and print results
v2 <- 1:5
times2 <- function(num){
  return(num*2)
}
print(v2)
result <-sapply(v,times2)
print(result)

#Anonymous functions, same as the above num*2 function but without assignment of function to variable
v <- 1:5
print(sapply(v,function(num2){num2*2}))

#Apply function with mutiple inputs
v <-1:5
add_choice <- function(num,choice){
  return(num+choice)
}
#print(add_choice(2,10))
##OR we couldve used sapply
print(sapply(v,add_choice,choice=100))