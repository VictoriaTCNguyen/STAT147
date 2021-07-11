# 
# Lab 3B

# The goal of this lab is give you practice using loops, and computing numerical sequences.
# 
# Throughout the lab, there are questions that you will need to answer. Please submit your answers to the quiz on Canvas. Make sure to follow the directions to receive credit.
# 
# While you will not need to submit any files for this lab. It is recommended that you use an R Script to answer the questions. As with HW 1, part of your work in this lab will be used for HW 3.

# Question 1: Fibonacci Numbers
# Part A
# Watch the following video on Fibonacci sequences https://www.youtube.com/watch?v=2tv6Ej6JVho.
## no answer

# Part B
# Use a loop that will generate the first 50 Fibonacci numbers. Start with the first two numbers at 0 and 1.


fibonacci <- c(0,1)               #initialize the first two numbers: 0 & 1 in a 
for(i in (3:50)){                 #for loop for the 3rd to 50th numbers in the sequence
  fibonacci[i] <- (fibonacci[i-1]+fibonacci[i-2]) #each number is found using the two before it
}
fibonacci   #prints first 50 values of fibonacci sequence



# Part C
# What is the value for the 26th Fibonacci number?
fibonacci[26]

#   Question 2: Triangular Numbers
# Part A
# Watch the following video on Triangular numbers https://www.youtube.com/watch?v=I3t385Oqv58.

# Part B
# Use a loop that will generate the first 40 Triangular numbers. The first number is 1.
triangular <- function(n) cumsum(seq(n)-1)
triangular(40)

Tri <- function(n) {
  for(i in 1:40){
  x[i] <- (i * (i + 1)) / 2 
  }
  return(x)
}

Tri(n)
#820



Tri <- function(n) {
  for(i in 1:40){
    x[i] <- (i * (i + 1)) / 2 
  }
  return(x)
}

#Returns as a list
Tri(n)
# Part C
# What is the sum for the first 40 Triangular numbers?

triangularsum <- function(n) sum(cumsum(seq(n)-1))
triangularsum(40)

trisum <- cumsum(Tri(n))
trisum

#shld b 11,480
#   Question 3: Tetrahedral Numbers
# Part A
# Watch the following video on Tetrahedral numbers: https://www.youtube.com/watch?v=bYSxopkclOI.
# The idea with Tetrahedral is that the next number in the sequence is computed by adding the next value from the Triangular numbers.

# Part B
# # Use a loop that will generate the first 39 Tetrahedral numbers. Start with the first number is 1.
# 

# initiate x with 1 and an empty vector
x <- 1
z <- c(1:39)
tetrahedral <- c()
for (i in seq_along(z)){
  tetrahedral[i] <- (x * (x + 1) * (x + 2)) /6
  x <- x + 1
}
tetrahedral
# Part C
# What is the sum for the first 39 Tetrahedral numbers?

#shld b 111,930
  