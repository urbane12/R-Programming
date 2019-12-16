#Script for printing out the verification of if a number is even or odd
x <- 3
if (x %% 2 == 0){
  print(paste(x,'Is a even Number'))
}else{
  print("Not Even")
}

#Script for printing out which number are held in the matrix
y <- matrix(1:16, nrow = 4, ncol = 4)
if (is.matrix(y) == T){
  print(paste(y,'Is in the Matrix '))
}else{
  print(paste(y,'Not in the Matrix'))
}

#Script for printing the decreasing values within the vector
z <- c(3,7,1)
if(is.vector(z) == T){
  print(paste('z', "Is a Vector, lets move on !"))
  (sort(z, decreasing = TRUE))
}else{
  (is.vector(z) == F)
  print(paste(z, "Is Not a vector"))
}

#Script for sorting a vector and printing the maximum value in it
a <- c(20,10,1)
if(is.vector(a) == T){
  sort(a, decreasing = T)
  print(max(a))
}else{
  print("Something is wrong with the logic")
}
