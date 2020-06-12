w <- c("a","b","c","d","e")
w[1]
w[2]
w[-2]
w[1:4]
w[-2:-3]
w[c(1,2,3)]

#R-specific programming loop
x <- rnorm(5)
for (i in x){
  print(i)
}

#Conventional programming loop

for(j in 1:5){
  print(x[j])
}

#----------------------2nd Part-------------------------------

N <- 100
a <- rnorm(N)
b <- rnorm(N)
#vectorized approach

c <- a * b

#De-vectorized 0approach
d <- rep(NA,N)
for (i in 1:N){
  d[i] <- a[i] * b[i]
}

g <- c("a","b","c")
rnorm(5, 8, 10)
rnorm(5, mean=10, sd=8)
g <- seq(from=15, to=60, along.with = g)
g
rep(1:3, each=5)
