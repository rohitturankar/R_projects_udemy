"Hello world!"
mydata <- read.csv(file.choose())
install.packages("ggplot2")
ggplot(data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, colour= clarity)) + geom_point(alpha=0.1) + geom_smooth()

#integer
x <- 2L
typeof(x)
#double
y <- 2.5
typeof(y)
#complex
z <- 3 + 2i
typeof(z)
#character
a <- "H"
typeof(a)
#logical
q1 <- T
typeof(q1)
q2 <- FALSE
typeof(q2)
