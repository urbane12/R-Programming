#Functions with R Training excercise

#Create a function that takes in a name as a string argument, and prints out "Hello name"
print("Please enter your name with the function call")
hello_name <- function(name){
  print(paste('Hello',name,"!"))
  print("Good Job!")
}

#Create a function that takes in a name as a string argument and returns a string of the form - "Hello name"
hello_name2 <- function(name){
  return(paste('Hello',name,"!"))
  print("Good Job!")
}
#Create a function that will return the product of two integers.
prod <- function(var1,var2){
  prodresult <- var1*var2
  return(prodresult)
}
#Create a function that accepts two arguments, an integer and a vector of integers. It returns TRUE if the integer is present in the vector, otherwise it returns FALSE. Make sure you pay careful attention to your placement of the return(FALSE) line in your function!
numcheck <- function(x,y){
 for (item in y){
   if (item == x){
     return(TRUE)
   }
  }
  return(FALSE)
}
#Create a function that accepts two arguments, an integer and a vector of integers. It returns the count of the number of occurences of the integer in the input vector.
num_count <- function(number,b){
  count = 0
  for (a in b) {
    if (a == number){
      count = count +1
    }
  }
  return(count)
}

#We want to ship bars of aluminum. We will create a function that accepts an integer representing 
#the requested kilograms of aluminum for the package to be shipped. 
#To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). 
#Return the least number of bars needed.
#For example, a load of 6 kg requires a minimum of two bars (1 5kg bars and 1 1kg bars). 
#A load of 17 kg requires a minimum of 5 bars (3 5kg bars and 2 1kg bars).

#Figure out how many times 5 goes into load number, remainder will be 1kg bars

barcount <- function(pack){
  #pack is kg load to fill
  amount.of.ones <- pack %% 5
  amount.of.fives <- (pack - amount.of.ones)/5
  return(amount.of.ones + amount.of.fives)
}
print(barcount(6))

#Create a function that accepts 3 integer values and returns their sum. 
#However, if an integer value is evenly divisible by 3, then it does not count towards the sum. 
#Return zero if all numbers are evenly divisible by 3. Hint: You may want to use the append() function.
summer <- function(a, b, c){
  out <- c(0)
  if (a %% 3 != 0){
    out <- append(a,out)
  }
  if (b %% 3 != 0){
    out <- append(b,out)
  }
  if (c %% 3 != 0){
    out <- append(c,out)
  }
  return(sum(out))       
}
# Create a function that will return TRUE if an input integer is prime. 
# Otherwise, return FALSE.
primecheck <-function(primenum){
  if(primenum == 2){
    return(TRUE)
  }else if(any(primenum %% 2:(primenum-1) == 0)){
    return(FALSE)
  }else{
    return(TRUE)
  }
}