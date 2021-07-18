# Lab 4B
# The goal of this lab is have you practice hypothesis testing in R.
# Throughout the lab, there are questions that you will need to answer.
# Please submit your answers to the quiz onCanvas.
# Make sure to follow the directions to receive credit.
# While you will not need to submit any files for this lab. 
# It is recommended that you use an R Script to answer thequestions. 
# As with HW 3, part of your work in this lab will be used for 
# HW 4.
# 
# Question 1
# Load the dreams.RData into R.

load("/Users/victoria/Downloads/dreams.RData")

# The dreams data contains information about two soporific drugs (group) and their affect on sleep (extra). 
# Find the mean and standard deviation for the variable extra in each group fromthe variable group.

aggregate( extra ~ group, dreams, mean )
aggregate( extra ~ group, dreams, var )
dreams2 <- group_by(dreams, group, .keep = TRUE)
group_split(dreams, group, do,.add = TRUE, .drop = group_by_drop_default(.data))
do(dreams, group, do,.add = TRUE, .drop = group_by_drop_default(.data))
# Question 2
# Test if the data for each group is normally distributed using the Shapiro-Wilks Test.
install.packages("dplyr")
library("dplyr")
install.packages("ggpubr")
library("ggpubr")

shapiro.test(dreams$len)

# Question 3
# Test the assumption of equal variance.
# 
# Question 4
# Conduct a two sample independent t-test to see if the two groups are different from each other.
# 
# Question 5
# At an  of 0.05, are the two groups different from each other?