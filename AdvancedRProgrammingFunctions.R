#Two options for using the grep function
#grepl
#grep
#Use grepl function to determine if voting is in our text string
text <- "Hi there, do you know who you are voting for"
grepl('voting',text)

#Use grepl function to determine if b is in vector v and use grep to determine position of b in vector
v<- c('a','b','c','d','d')
grepl('b',v)
grep('b',v)

#Dates
#Check current date YYYY-MM-DD
Sys.Date()
#Store current date into today
today <- Sys.Date()
#Determine class of today from date storage
class(today)

c<-"1991-03-08"
class(c)
my.date <-as.date(c)
#validate its a date object
class(my.date)
#this will error out because this is not a standard format
as.Date("Nov-07-1789")

#Save desired date into date object for the MM--DD-YY format
my.date <- as.Date("Nov-14-90", format = "%b-%d-%y")
#Format into Month DD YYYY
as.Date('June, 01, 2002' format= '%B,%d,%Y')
#Use portable OS interface to convert strings into timestamp information (Hrs Minutes Secs)
as.POSIXct("11:06:03", format = "%H:%M:%S")

#Alternative way of converting time (Hrs Minutes Secs)
strptime("11:02:03", format = "%H:%M:%S")
