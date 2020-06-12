##binomial probablity histograms

#1
?dbinom
x <- c(1:10)
Sample1 <- dbinom(x, 10, 0.2, log = FALSE)
str(Sample1)
#2
Sample2 <- dbinom(x, 10, 0.5, log = FALSE)
str(Sample2)
#3
?hist
Sample3 <- dbinom(x, 10, 0.8 , log = FALSE)
str(Sample3)
?data.frame
data3<- cbind(Sample1,Sample2,Sample3)
total_data_fc <- data.frame(data3, rown)
#hist(Sample1, xlim = 1:10, ylim= 0:1(0.20))
?dbinom
r2 <- rbinom(535, 600, 0.86)
barplot(r2)

qplot(r2)
qplot(data=r2, 
      size=I(5), shape=I(19)

      
      
      
?Hypergeometric
dhyper(2,5,16,4,0.35)
qplot(rnorm(1,8))
?rnorm
qplot(rnorm(200, mean = 39.05, sd = 3.2))
