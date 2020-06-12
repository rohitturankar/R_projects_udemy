r1 <- c("God","bless","you","Papa")
r1
r2 <- c("1", "2", "3", "4")
r2
re <- c("Believe","in","the","karma")
rohit <- rbind(r1, r2, re)
rohit
c1 <- 0:10
c2 <- 20:30
c3 <- cbind(c1, c2)
c3
c3[2,]
r4 <- c("q1","q2","q3","q4")
r5 <- 1:3
colnames(rohit) <- r4
row.names(rohit) <- r5
rohit
rohit[3,"q4"]
r6 <- matrix(r5, 6,6)
r6


#Named vector
Charlie <- 1:3
names(Charlie) <- c("ab","cd","ef")
Charlie
Charlie["ab"]
names(Charlie)

#clear names

names(Charlie) <- NULL
names(Charlie)

temp.vec <- rep(c("a","b","c"), 3)
bravo <- matrix(temp.vec, 3, 3, byrow = T)
bravo
