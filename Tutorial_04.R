#while loop practice 1
i <- 3
while(i>2){
  print("hello")
  i <- i - 1
}

#while loop practice 2
counter <- 1

while(counter< 12){
  print(counter)
  counter <- counter + 1
}

#for loop practice 1
for(i in 1:3){
  print("Hello Bhawana, Chai mat peena")
}

#If statement practise set 1

rm(answer)
x <- rnorm(1)
if(x > 1){
  
  answer <- "Greater than 1"
} else {
  if(x >= -1){
  
  answer <- "Between 1 and -1"
  }
  else {
    answer <- "Less than -1"
  }
  }
