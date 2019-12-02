  # If else and else if Statements 

  # Store the value of 10 into the variable x
BankAccount <- 1000000000
if (BankAccount==1000000000){
  #Code
  print('Your Bank Account balance is: $1,000,000,000 !')
}else if(BankAccount == 12){
  print('Your Bank Account balance is $12')
}else{
  print('Bank Account was not equal to 1000000000 or 12')
}
  #Save the value of False into the hot variable
hot <- FALSE
  #Store the value of 100 into the variable temp
temp <- 90
if(temp > 80){
  #Execute if the condition was TRUE
  hot <- TRUE
}
print(hot)
#Store the value of 30 into the variable temp2
temp2 <- 30

#Execute if condition was True then navigate through the others as applicable, "else" statements do not check anything and will print regardless
if(temp2 > 80){
    print('Hot Outside!')
}else if (temp <= 80 & temp >= 50){
  print('Nice Outside')
}else if(temp == 45){
  print("Exactly 45 degrees outside!")
}else{
  print("It's less than 50 degrees outsideand its not exactly 45 degrees!")
}


