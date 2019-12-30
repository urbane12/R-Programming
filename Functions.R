#Example of functions 
name_of_func <- function(input1,input2,input3=45){
  #Code to execute
  result <- input1 + input2
  return(result)
}

#Function for printing welcome message and replace default name with Sammy
hello <- function(name='Jamal'){
  print(paste("Welcome to the Matrix, how may I help you, Passenger",name,"?"))
}
hello('Sammy')

#Function for adding numbers - Sum function couldve been used as well but this is to show you can stroe whatever you desirei n the function
#Function stores sum into my.sum for use later
add_num <- function(num1,num2){
  my.sum <- num1 + num2
  return(my.sum)
}
result <- add_num(4,5)
print(result)

#Function for mutipling a number by 5 (the my.result variable is only availble within the function scope, not global)
times5 <-function(num){
  my.result <- num *5
  return(my.result)
}
my.output<- times5(100)
print(my.output)

#Showing how the global variables work
v <- "I'm a global variable"
stuff <- "I'm global stuff"

fun <- function(stuff){
  print(v)
  stuff <- "Reassign stuff inside of the function fun"
  print(stuff)
}
#This iteration of stuff uses the stuff reassignment within the function fun
fun(stuff)
#This iteration uses the global scope of stuff
print(stuff)