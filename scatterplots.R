library(ggplot2)
#Create scatterpplot with disply and hwy values for x,y respectively
pl <- ggplot(mpg, aes(x=displ,y=hwy)) + geom_point()

#Adjust coordinates based on x limit range of [1,4] and y [15,30]
# pl2 <- pl + coord_cartesian(xlim = c(1,4),ylim = c(15,30))

#Alternatively the coordinates are based on the 1/3 ratio
# pl2 <- pl + coord_fixed(ratio = 1/3)


#print plot
#print(pl2)
#Create 4 seperate plots for each cyl value
#print(pl + facet_grid(. ~ cyl))

#Alternatively create 4 plots for the drv values and cyl values
print(pl + facet_grid(drv ~ cyl))
