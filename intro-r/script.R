# Download a file
download.file( 
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb"
)

install.packages("tidyverse") # install packages
library(tidyverse) # Load packages

#### Create objects ####
5 / 64

hectare <- 2 # Assignment operator to create objects
hectare

# Short cut for assignment operator: Option

hectare <- 3 # Run with Command + Return
hectare * 2.47

acre <- hectare * 2.47
acre

##### Functions #####
sqrt(9)
round(3.14159)
round(x = 3.14159, digits = 3)
round(3.14159, 3)
?round # open help page

##### Vectors #####

# Create a vector
members <- c(3, 7, 10, 6)
1:100
wall_type <- c("muddaub", "burntbricks", "sunbricks")
wall_type

length(members)
class(members)
class(wall_type)

c(members, wall_type) # c maps into character
class(c(members, wall_type))

##### Subsetting vectors #####
wall_type[3]
members[c(2, 3)]
members[2]

# Rearrange vectors
wall_type[c(3, 2, 1)]

# Subset with logical vectors
c(TRUE, FALSE, F, T)

members[c(TRUE, FALSE, FALSE, TRUE)]
members > 6

members[members > 6]
members[members == 6] # Find where is '6'
length(members[members == 6]) # Find counts of '6'
sum(members == 6)


