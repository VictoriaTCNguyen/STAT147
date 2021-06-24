#install package
install.packages("palmerpenguins")

#load package
library(palmerpenguins)

#eliminate observations with missing values
new_penguin <- na.omit(penguins)
new_penguin

#convert variables into separate vectors
penguins_year <- new_penguin$year
penguins_species <- new_penguin$species
penguins_island <- new_penguin$island
penguins_sex <- new_penguin$sex
penguins_bill_length_mm <- new_penguin$bill_length_mm
penguins_bill_depth_mm <- new_penguin$bill_depth_mm
penguins_flipper_length_mm <- new_penguin$flipper_length_mm
penguins_body_mass_g <- new_penguin$body_mass_g

#check for numeric vs character
is.numeric(penguins_species)

#statistics for year
mean(penguins_year)
median(penguins_year)
sd(penguins_year)
sum(penguins_year)

#table frequencies for species
table(penguins_species)

#table frequencies for island
table(penguins_island)

#table frequencies for sex
table(penguins_sex)

#statistics for bill length
mean(penguins_bill_length_mm)
median(penguins_bill_length_mm)
sd(penguins_bill_length_mm)
sum(penguins_bill_length_mm)

#statistics for bill depth
mean(penguins_bill_depth_mm)
median(penguins_bill_depth_mm)
sd(penguins_bill_depth_mm)
sum(penguins_bill_depth_mm)

#statistics for flipper length
mean(penguins_flipper_length_mm)
median(penguins_flipper_length_mm)
sd(penguins_flipper_length_mm)
sum(penguins_flipper_length_mm)

#statistics for body mass
mean(penguins_body_mass_g)
median(penguins_body_mass_g)
sd(penguins_body_mass_g)
sum(penguins_body_mass_g)

#will my commits show now