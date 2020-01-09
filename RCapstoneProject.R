batting <- read.csv('Batting.csv')
print(head(batting))
#Verify our data is correct
head(batting$AB)
head(batting$X2B)
#Create the batting average into a new variable
batting$BA <- batting$H / batting$AB
#verify tail with the last 5 rows -- After doing this operation, check the last 5 entries of the BA column of your data frame and it should look like this:
tail(batting$BA,5)
#Create on base percentage and slugging percentage variables
batting$OBP <- (batting$H + batting$BB + batting$HBP)/(batting$AB + batting$BB + batting$HBP + batting$SF)

#Create X1B for singles
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR

# Creating Slugging Average (SLG)
batting$SLG <- ((1 * batting$X1B) + (2 * batting$X2B) + (3 * batting$X3B) + (4 * batting$HR) ) / batting$AB
#Check the structure of your data frame using str()
str(batting)
#Load the Salaries.csv file into a dataframe called sal using read.csv
sal <- read.csv('Salaries.csv')
#Use subset() to reassign batting to only contain data from 1985 and onwards
summary(batting)
batting <- subset(batting,yearID >= 1985)
#Now use summary again to make sure the subset reassignment worked, your yearID min should be 1985
summary(batting)
# Use the merge() function to merge the batting and sal data frames by c('playerID','yearID'). Call the new data frame combo
combo <- merge(batting,sal,by=c('playerID','yearID'))
#Use summary to check the data
summary(combo)
#Use the subset() function to get a data frame called lost_players from the combo data frame consisting of those 3 players. Hint: Try to figure out how to use %in% to avoid a bunch of or statements!
lost_players <- subset(combo,playerID %in% c('giambja01','damonjo01','saenzol01') )
lost_players
#Use subset again to only grab the rows where the yearID was 2001.
lost_players <- subset(lost_players,yearID == 2001)
#Reduce the lost_players data frame to the following columns: playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB
lost_players <- lost_players[,c('playerID','H','X2B','X3B','HR','OBP','SLG','BA','AB')]
head(lost_players)
#First only grab available players from year 2001
library(dplyr)
avail.players <- filter(combo,yearID==2001)
#Then I made a quick plot to see where I should cut-off for salary in respect to OBP:
library(ggplot2)
ggplot(avail.players,aes(x=OBP,y=salary)) + geom_point()
#Looks like there is no point in paying above 8 million or so (I'm just eyeballing this number). I'll choose that as a cutt off point. There are also a lot of players with OBP==0. Let's get rid of them too.
avail.players <- filter(avail.players,salary<8000000,OBP>0)
#The total AB of the lost players is 1469. This is about 1500, meaning I should probably cut off my avail.players at 1500/3= 500 AB.
avail.players <- filter(avail.players,AB >= 500)
#Now let's sort by OBP and see what we've got!
possible <- head(arrange(avail.players,desc(OBP)),10)
#Grab columns I'm interested in:
possible <- possible[,c('playerID','OBP','AB','salary')]
possible












