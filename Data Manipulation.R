#Using Dplyr, Install packages and call lib
install.packages("dplyr")
install.packages("nycflights13")
library(dplyr)
library(nycflights13)

#Pull the head of flights
head(flights)
#chekc overall structure of flights
summary(flights)

#Pull a list of flights on Nov 3 that ran through american airlines using the filter function from the dplyr library
filter(flights, month ==11, day ==3, carrier == 'AA')

#Pull a list of the first 10 objects in flights using slice
slice(flights,1:10)

#Reorder head of the list of flights by year, month, day and arrival time
head(arrange(flights, year,month,day,air_time))

#Use select function to only grab relevant data from flights pertaining to the carrier
head(select(flights,carrier))

#Rename the carrier column to airline carrier
head(rename(flights,airline_carrier = carrier))

#Select unique values from the carriers 
distinct(select(flights,carrier))

#create new column as a function of two other columns using mutate function which will then pull all columns
head(mutate(flights,new_col = arr_delay-dep_delay))

#use transmute function to do the same as above but only return new column
head(transmute(flights,new_col = arr_delay-dep_delay))

#Get our data with a average of time and remove if rempty
summarise(flights,avg_air_time=mean(air_time,na.rm= TRUE))

#Random sample of 10 rows
sample_n(flights,10)

#Sample of 10% of the data
sample_frac(flights,0.1)
