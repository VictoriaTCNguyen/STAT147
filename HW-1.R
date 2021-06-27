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

## Part 1

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

## Part 2

## Part 3

## Part 4

########################################################
## Question 2
########################################################

########################################################
## Question 3
########################################################

## Revised Code


########################################################
## Question 4
########################################################



########################################################
## Question 5
########################################################


########################################################
## Question 6
########################################################

########################################################
## Question 7
########################################################

## Revised Code

########################################################
## Question 8
########################################################


########################################################
## Question 9
########################################################


########################################################
## Question 10
########################################################

