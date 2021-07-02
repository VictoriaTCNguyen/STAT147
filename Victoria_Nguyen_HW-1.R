########################################################
## NAME: Victoria Nguyen
########################################################

########################################################
## Assignment information
########################################################

# Use this RScript to record all your code.
# Remember to comment any code you provide.
# Remember to change the name of the file to your name.
# Read all instructions carefully to receive credit.
# Email the instructor if you have any questions.

### Grading ###

# (20 pts) Have you completed the assignment in its entirety?
#   
# (20 pts) Are your responses correct for the subset of randomly graded questions?
#   
# (10 pts) CODE DOCUMENTATION. Add comments to nearly every line explaining what the line of code is doing.


########################################################
## Question 1
########################################################

### Part A ###

penguins_species <- new_penguin$species
penguins_island <- new_penguin$island
penguins_sex <- new_penguin$sex
penguins_bill_length_mm <- new_penguin$bill_length_mm
penguins_bill_depth_mm <- new_penguin$bill_depth_mm
penguins_flipper_length_mm <- new_penguin$flipper_length_mm
penguins_body_mass_g <- new_penguin$body_mass_g

#table frequencies for species
table(penguins_species)

#table frequencies for island
table(penguins_island)

#table frequencies for sex
table(penguins_sex)

#statistics for bill length
mean(penguins_bill_length_mm)
sd(penguins_bill_length_mm)
sum(penguins_bill_length_mm)

#statistics for bill depth
mean(penguins_bill_depth_mm)
sd(penguins_bill_depth_mm)
sum(penguins_bill_depth_mm)

#statistics for flipper length
mean(penguins_flipper_length_mm)
sd(penguins_flipper_length_mm)
sum(penguins_flipper_length_mm)

#statistics for body mass
mean(penguins_body_mass_g)
sd(penguins_body_mass_g)
sum(penguins_body_mass_g)

### Part B ###

## Part 1: Create vectors.

# 1. A vector containing the element-wise product of bill_length_mm and bill_depth_mm .
product_bill_length_bill_depth <- as.vector(penguins_flipper_length_mm) * as.vector(penguins_bill_depth_mm)
product_bill_length_bill_depth

# 2. A vector containing the element-wise addition of flipper_length_mm and body_mass_g .
addition_flipper_length_body_mass <-  as.vector(penguins_flipper_length_mm) + as.vector(penguins_body_mass_g)
addition_flipper_length_body_mass

# 3. A vector containing the element-wise subtraction of bill_length_mm and body_mass_g .
subtraction_bill_length_body_mass <- as.vector(penguins_bill_length_mm) - as.vector(penguins_body_mass_g)
subtraction_bill_length_body_mass

# 4.  A vector containing the element-wise addition of bill_length_mm , bill_depth_mm , flipper_length_mm and body_mass_g .
addition_bill_length_bill_depth_flipper_length_body_mass <- as.vector(penguins_bill_length_mm) + as.vector(penguins_bill_depth_mm) + as.vector(penguins_flipper_length_mm) + as.vector(penguins_body_mass_g)
addition_bill_length_bill_depth_flipper_length_body_mass

## Part 2 or the vectors found in question 1 find the max, min, sum, median, and standard deviation 

max(product_bill_length_bill_depth)
min(product_bill_length_bill_depth)
sum(product_bill_length_bill_depth)
mean(product_bill_length_bill_depth)
median(product_bill_length_bill_depth)
sd(product_bill_length_bill_depth)

max(addition_flipper_length_body_mass)
min(addition_flipper_length_body_mass)
sum(addition_flipper_length_body_mass)
mean(addition_flipper_length_body_mass)
median(addition_flipper_length_body_mass)
sd(addition_flipper_length_body_mass)

max(subtraction_bill_length_body_mass)
min(subtraction_bill_length_body_mass)
sum(subtraction_bill_length_body_mass)
mean(subtraction_bill_length_body_mass)
median(subtraction_bill_length_body_mass)

max(addition_bill_length_bill_depth_flipper_length_body_mass)
min(addition_bill_length_bill_depth_flipper_length_body_mass)
sum(addition_bill_length_bill_depth_flipper_length_body_mass)
mean(addition_bill_length_bill_depth_flipper_length_body_mass)
median(addition_bill_length_bill_depth_flipper_length_body_mass)
sd(addition_bill_length_bill_depth_flipper_length_body_mass)

## Part 3:
# Create a 2 by 2 table showing the cross-tabulation of island and species.
# Is this supposed tosay 3 x 3?

library(stats) #load function for xtabs 
table_penguins_1 <- xtabs(~penguins_island+penguins_species)
table_penguins_1 

## Part 4
# Create a 2 by 2 table showing the table proportions of island and species.

table_penguins_2 <- prop.table(table(penguins_island, penguins_species)) #Note: can add , x to the end to limit decimal points
table_penguins_2

########################################################
## Question 2
# Please read the “Debugging techniques” of Hadley Wickham’s “Advanced R” 
#(freely available online). Describe the 4 steps to debugging your code.
#Record your results as comments on your R Script.

#1. Realize there is a bug. This can either be self-identified or by using automated testing.
#2. Make the bug reproducible. This may mean finding a way to generate it faster than the original code. This can easily be done using binary search. 
#   It's also made easier using an automated test case.
#3. Figure out what line of code causes the bug. 
#4. Figure out how to fix the bug. This requires either automated testing or proper
#   documentation of outputs. 

########################################################

########################################################
## Question 3



#Repair the code below to print out the R object my_vector. Record your results as comments on your R Script.

vec_1 <- c(4,4,)

## Error in c(4, 4, ): argument 3 is empty

vec_2 < c(5,6)

## Error in eval(expr, envir, enclos): object 'vec_2' not found

My_vector <- vec_1 * vec_2

## Error in eval(expr, envir, enclos): object 'vec_1' not found

print(my_vector)

## Error in print(my_vector): object 'my_vector' not found
########################################################

## Revised Code
vec_1 <- c(4,4) #comma removed so it now has a length of 2, like vec_2
vec_2 <- c(5,6) #- added so <- properly assigns column to vec_2
my_vector <- vec_1 * vec_2 #got rid of capitalization in My_vector as print(my_vector) is case-sensitive
print(my_vector)

########################################################
## Question 4
#Describe two methods to open the help documentation in R? Record your results as comments on your R Script.

# one way is to use help(), inside the parenthesis you enter the name of the function you would like help with.
# it can be used for operators as well, with the name of the operator in "" or ''
# to get help with packages, use help(package="PACKAGENAME")
# ?() can also be used the same way as help()
########################################################



########################################################
## Question 5
##Other than the library function, what are two other methods to call a function from an R Package?
##Record your results as comments on your R Script.

# require() can be used inside functions, will warn when the package isn't found
# packagename::functionname() can also be used 
########################################################


########################################################
## Question 6
## Repair the following code to print out the value 10:
  
my_variable <- 10
my_varıable
## Error in eval(expr, envir, enclos): object 'my_varıable' not found

my_variable #fixed spelling
########################################################

########################################################
## Question 7
## Describe what the functions sum and cumsum accomplishes:

x <- c(1:10)
sum(x)
cumsum(x)
########################################################

## Revised Code
#  sum(x) shows the final sum of all numbers from 1 to 10
#  cumsum(x) shows the cumulative sum, as in each time a new sum is calculated it is shown
#   (1 , 1+2, 1+2+3, etc)
########################################################
## Question 8
## Describe what the functions prod and cumprod accomplishes:

y <- 1:10
prod(y)
cumprod(y)
########################################################
# prod(y) shows the final product of all the numbers 1 to 10 multiplied
# cumprod(y) shows the product being calculated object by object, similar to cumsum()
# (1 , 1*2, 1*2*3, etc)
########################################################
## Question 9
## Describe what the %% operator accomplish.
z <- 11:15
z %% 2
########################################################
# [1] 1 0 1 0 1
# %% does modular division. it outputs the remainder 
########################################################
## Question 10
## Describe what the == operator accomplish.
z <- 11:15
(z %% 2 ) == 0

# == outputs whether or not (z %% 2) is exactly 0 or not. 
# since (z %% 2) is a vector, it shows the result for each object in the vector

########################################################

