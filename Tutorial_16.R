z <- c("a","b","c","d","e")
z[c(1,5)]
z[3]
Games[,c(6:9)]
Games[c(1,10),]
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])
Games[1,5,drop=F]


#maming the matrix subset matrix by introducing one parameter drop

Games[1,,drop=F]
is.matrix(Games[1,,drop=F])
is.vector(Games[1,,drop=F])

####--------------------------------------------------------------
#Visualizing Subsets

matplot(t(MinutesPlayed), type="b", pch = 15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players,col=c(1:4,6),pch = 15:18, horiz = F )

Data <- MinutesPlayed[1:3,]
matplot(t(Data), type="b", pch = 15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[1:3],col=c(1:4,6),pch = 15:18, horiz = F )

#for a single player Kobe Byrant 

Data <- MinutesPlayed[1,,drop = F]
matplot(t(Data), type="b", pch = 15:18, col=c(1:4,6))
legend("bottomleft", inset = 0.01, legend = Players[1],col=c(1:4,6),pch = 15:18, horiz = F )


#creating Functions - 

myplot <- function(){
  Data <- MinutesPlayed[2:3,,drop = F]
  matplot(t(Data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[2:3],col=c(1:4,6),pch = 15:18, horiz = F )
  
}
myplot()

myplot2 <- function(rows){
  Data <- MinutesPlayed[rows,,drop = F]
  matplot(t(Data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[rows],col=c(1:4,6),pch = 15:18, horiz = F )
  
}
myplot2(3)
 # funtions with multiple parameters 
myplot3 <- function(d123,rows){
  Data <- d123[rows,,drop = F]
  matplot(t(Data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[rows],col=c(1:4,6),pch = 15:18, horiz = F )
  
}

myplot3(Salary,1:3)

#assigning default values to functions

myplot4 <- function(d123,rows=1:10){
  Data <- d123[rows,,drop = F]
  matplot(t(Data), type="b", pch = 15:18, col=c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[rows],col=c(1:4,6),pch = 15:18, horiz = F )
  
}
myplot4(MinutesPlayed/Games,3)
 

#different Cases

myplot4(Salary)
myplot4(Salary/Games)
myplot4(Salary/FieldGoals)
#in-game metrics

myplot4(MinutesPlayed)
myplot4(Points)

#Normalizing in-game Metrices

myplot4(FieldGoals/Games)
myplot4(FieldGoals/FieldGoalAttempts)
myplot4(FieldGoalAttempts/Games)
myplot4(Points/Games)

#interesting Observation

myplot4(MinutesPlayed/Games)

#time is valuable
myplot4(FieldGoals/MinutesPlayed)

#player style
myplot4(Points/FieldGoals)
