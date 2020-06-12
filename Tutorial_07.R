
#Method 1 choosing the file from folders

stats <- read.csv(file.choose())
stats

#Method 2 
getwd()
setwd("C:\\Users\\user\\Documents\\R\\Udemy_R_AZ")
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")
nrow(stats)
ncol(stats)
head(stats, n=8)
tail(stats)
str(stats)
summary(stats)
runif(5) --#it means a function which will create 
           #5 numbers which are unifromly ditributed
stats[3, 3]
stats[3, "Birth.rate"]  
stats$Internet.users[2]
levels(stats$Country.Code)
levels(stats$Income.Group)
is.data.frame(stats[1,])

stats$Mycalc <- stats$Birth.rate * stats$Internet.users
head(stats)

#removing the column
stats$Mycalc <- NULL
head(stats)

#-----filtering the data frames-----


stats$Internet.users < 2
stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
stats[stats$Country.Name=="Malta",]
stats[stats$Income.Group == "High income" & stats$Birth.rate < 10 & stats$Internet.users > 80,]

#-----Introduction to qplot-------------------
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), colour=I("blue"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom = "boxplot")


#----------Visualizing What we need ---------

qplot(data = stats, x= Internet.users, y=Birth.rate, 
      colour= Income.Group, size=I(4))
#-------------------------------------------------






