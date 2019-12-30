#Save 0 into variable and then increment x each unitl it is equal to 11
x <- 0
while(x<11){
  print(paste('x is: ',x))
  x <- x+1
  if(x==11){
    print("X is now equal to 11! Break out of the loop !")
    print("You've reached the end of the loop!")
    break
  }
}

v <- c(1,2,3)
for (variable in v){
  print(variable)
}

for(temp.var in v){
  print('The finish line has moved by:')
  result <- temp.var + 1
  print(temp.var)
}

#Below is the storing of mtcars into list2 and then printing each line item by item
#list2 <- list(c(1,2,3),mtcars,12)

#for(item in list2){
#  print(item)
#}

#Create a matrix and store the range 1-25 into the mat variable 
mat <- matrix(1:25,nrow = 5)
print(mat)

#print each value stored in the matrix one at a time
for (row in 1:nrow(mat)){
  for (y in 1:ncol(mat)) {
    print(paste('The element at row:',row, 'and col:',col, 'is' ,mat[row,col]))
  }
}
