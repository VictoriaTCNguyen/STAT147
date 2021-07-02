# # 1.
# Part A
# The file ca_pop.csv contains the population estimates for each county in CA. Read the data into R and identify the name of the variable that contains the population size in the data frame.

# read in local file by pressing option and right click > copy path name
ca_pop_table <- read.csv2("/Users/victoria/Downloads/ca_pop.csv", 
                header= TRUE) #use header = true to import top line as headers
ca_pop_table

ca_pop_table2 <- read.csv("/Users/victoria/Downloads/ca_pop.csv")
head(Pop_size)
ca_pop_table2
## Pop_size has the poopulation size

# Part B
# The file ca_edu.xlsx contains the estimates of the number of individuals with a Bachelor’s a degree for each county in CA. The estimates are stratified by age group, i.e. each variable represents a different age group. Read the data into R and identify the number of individuals aged 18-24 who have a Bachelor’s degree in Riverside County.

#install and use package
install.packages("xlsx")

#method 1 : choose file each time
library("xlsx")
ca_edu_table <- read_excel(file.choose())
ca_edu_table 

# method 2 : pathway name
ca_edu_table2 <- read_excel("/Users/victoria/Downloads/ca_edu.xlsx", sheet = 1)
ca_edu_table2

## 15474 in Riverside County age 18-24 have a bachelor's degree

# Part C
# The file ca_med_inc.sav contains the median income estimates for each county in California. Read the data into R and find the mean median income in CA.

#install haven
install.packages("haven")                             # Install haven package
library("haven")                                      # Load haven package

ca_med_inc_table <- read_sav("/Users/victoria/Downloads/ca_med_inc.sav")                         # Reading data
ca_med_inc_table 
Med_Inc_new <- ca_med_inc_table$Med_Income
med_inc_ca_mean <- mean(Med_Inc_new)
med_inc_ca_mean

##the mean median income in CA is 77470.22

# Question 2
# Merge all 3 data frames into 1 data frame. How many variables (columns) does the final merged data frame have?
#   

merged_frame1 <- merge(ca_edu_table, ca_pop_table2 )
merged_frame2 <- merge(merged_frame1, ca_med_inc_table)

#count number of columns
ncol(merged_frame2)
## there are 8 variables


# Question 3
# Southern California can be thought of as the composition of the following counties: San Luis Obispo, Kern, San Bernardino, Santa Barbara, Ventura, Los Angeles, Orange, Riverside, San Diego, and Imperial County. Create a variable indicating whether the county belongs to Southern California or not. The following vector may be useful:
#   
  socal <- c("San Luis Obispo County, California", "Kern County, California",
             "San Bernardino County, California", "Santa Barbara County, California",
             "Ventura County, California","Los Angeles County, California",
             "Orange County, California", "Riverside County, California",
             "San Diego County, California", "Imperial County, California")

#isnt this it tho
  #subset
  subset(merged_frame2, merged_frame2$num_1 > 0)
 socal_set <- subset(merged_frame2, merged_frame2$NAME %in% socal)
 sum( socal_set$Pop_size)
 sum( socal_set$Bach_18_24)
mean(socal_set$Med_Income)
library(xlsx)
  write.xlsx(merged_frame2,"/Users/victoria/Downloads/merged_frame.xlsx")
  
  write.csv(merged_frame2,"/Users/victoria/Downloads/merged_frame.csv", row.names=TRUE)
# Question 4
# 
# What is the population size for Southern California?
#   Question 5
# 
# How many individuals aged 35-44 have a Bachelor’s Degree in Southern California?
#   Question 6
# 
# What is the average median income in Southern California?
#   
