
# Load gdata package to read excel files
library(graphics) 

# set working directory
setwd("C:/Users/User/Documents/Data/CITE/2015 Regina/gitproject/safety")

# read historical crash data file
mydata<-read.csv("historical crashes.csv", header = TRUE, sep = ",")

x<-mydata$Year
y<-(mydata$licensed.drivers/100)
z<-mydata$total.collisions
a<-mydata$persons.killed
b<-mydata$persons.injured
c<-a+b

png(filename="1931-2010 crash trends.png")
plot(x,y, type="l", col="blue", xlab="Year", ylab="Number", 
     xlim=c(1930,2010), ylim=c(0,240000)
     )                            #plots number of licensed drivers
lines(x,z, col="red", type="l")   #plots number of total collisions
lines(x,c, type="l", col="green") #plots number of killed or injured
lines(x,a, type="l", col="cyan")  #plots number of fatalities
lines(x,b, type="l", col="brown") #plots number of injuries

dev.off()