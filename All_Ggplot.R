getwd()
setwd("C:\\Users\\user\\Documents\\R\\Udemy_R_AZ")
getwd()
movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Film","Genre","CriticRating", "AudienceRating", "BudgetMillions","Year")
head(movies)
str(movies)
#how to convert a non-factor coloumn to factor

factor(movies$Year)
movies$Year <- factor(movies$Year) #------us this function for year and categorical column
summary(movies)


#Learning more about GGplot and Aethetics----------------





library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) #---will show blank graph as geometry in not introduced or added


# adding geometry ------geom()

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
       geom_point()

# adding colour


ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) +
       geom_point()


#Adding size better way

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) +
  geom_point()

#Still the graph is misleading and not deriving some useful information clearly 

#Needs improvement and enhancements

#creating a object for plotting 

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))

#lines
p + geom_line()

#overridding line on point

p + geom_line() + geom_point()

#Overidding Aesthetics


q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre,
                             size=BudgetMillions)) 

q + geom_point()

#add geom layer

q + geom_point(aes(size=CriticRating))
q + geom_point(aes(size=CriticRating,colour=BudgetMillions))

#after overriding also we are not changing the object so it will be the same 
q + geom_point()


#reduce line size of geom line to visualize better -

q + geom_line(size=1) + geom_point()

#Mapping vs setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

r + geom_point(aes(colour=Genre))
#2nd way

r + geom_point(colour="DarkGreen")

#3rd way

r + geom_point(aes(colour="Red"))
#Mapping

r + geom_point(aes(size=BudgetMillions))
#Settings

r + geom_point(size=10)
#Error

r + geom_point(aes(seize=10)) # --its refering now 10 as a legend

#For setting something dont use - AES function
#For Mapping something use aes function

#Histogram and Density Charts

s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth = 5) #--one colour graph
s + geom_histogram(binwidth = 10, aes(fill=Genre)) #mapping Genre in histogram

#adding borders

s + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")
#<<<<<Chart number 3 (we will improve it)

#probability density histogram

s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position = "Stack")


#------------------------------------------

t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth = 10, fill = "White" ,
                   colour = "Blue")

#another way - layering - Either add aesthetic in base layer or add it afterwards

t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10, aes(x=AudienceRating),
                   fill = "White", colour = "Blue")
 

#>>>>4th chart

t + geom_histogram(binwidth = 10, aes(x=CriticRating),
                   fill="White", colour="Blue")


#>>>.5TH CHART

t <- ggplot()

#---------------Statistical Transformation---------------


?geom_smooth

u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,colour=Genre))
u + geom_point()

#----adding geom_smooth

u + geom_point() + geom_smooth()

#----making it simple

u + geom_point() + geom_smooth(fill=NA)


#boxplots

u <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour = Genre))
u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()


#tip / hack

u + geom_boxplot(size=1.2) + geom_jitter()

#another way - i like this more clear

u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)


#homework

u <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour = Genre))
u + geom_boxplot()
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)



#------------Using Facets



v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre),colour="Black")


#facets
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   colour="Black") +
  facet_grid(Genre~. , scales = "free")



#-----

w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             colour=Genre))

w + geom_point(size = 3) + facet_grid(Genre~.)
w + geom_point(size = 3) + facet_grid(.~Year)
w + geom_point(size = 3) + facet_grid(Genre~Year)

w + geom_point(size = 3) + geom_smooth(fill=NA)+ facet_grid(Genre~Year)


w + geom_point(aes(size = BudgetMillions)) + geom_smooth(fill=NA) +
  facet_grid(Genre~Year) +  coord_cartesian(ylim=c(0,100))

#>>>>>1st chart but still we need to improve


#Coordinates

#Today
#Limits
#Zoom

m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             size = BudgetMillions,
                             colour = Genre))

m + geom_point()


#Zooming or viewing a specific area

m + geom_point() + xlim(50,100) + ylim(50,100)


#wont work all the time

n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")
n + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), colour="Black") + ylim(0,50)

#Improve Charts #1

n + geom_histogram(binwidth = 10, 
                   aes(fill=Genre), colour="Black") + 
  coord_cartesian(ylim=c(0,50))


#---Theme


o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")

#label

h + xlab("Money Axis") + ylab("Number of Movies")

#addming theme

h + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size=30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size = 20))
#legend formatting

h + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size=30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size=30),
        legend.text = element_text(size = 20))

#legend positioning on the top of graph

h + xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size=30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size=30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

#Giving Titilw to the ggplot


h + xlab("Money Axis") + ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") + 
  theme(axis.title.x = element_text(colour = "DarkGreen", size=30),
        axis.title.y = element_text(colour = "Red", size = 30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size=30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(colour = "DarkBlue", size = 40,
                                  family = "Courier"))

