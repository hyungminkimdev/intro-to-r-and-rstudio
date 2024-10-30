# Download a file
download.file( 
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb"
)

# install.packages("tidyverse") # install packages
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
sum(members == 2)

##### Missing Data #####

# Missing data is NA

members_na <- c(members, 3, NA)
sum(members_na)
sum(members_na)
members_na

# Remove missing values within functions na.rm = TRUE
sum(members_na, na.rm = TRUE)
mean(members_na, na.rm = TRUE)

##### Importing data #####
library(tidyverse)

read_csv("data/SAFI_clean.csv")

interviews <- read_csv("data/SAFI_clean.csv")
# $ view(interviews)

class(interviews)

interviews <- interviews[-1, ] # remove fisrt data
interviews

nrow(interviews) # number of rows
ncol(interviews) # number of columns
dim(interviews) # dimension

names(interviews)
glimpse(interviews)
        
summary(interviews)

##### Subset data frames #####
interviews[2]
interviews["village"]
village_obj <- "village"
interviews[village_obj]

# Two dimensions
interviews[1, 6]
interviews[, 6]
interviews[6, ]

interviews_sub <- interviews[1:6, c(1, 3, 4)]
summary(interviews_sub)

##### Extract vectors #####
interviews[["no_membrs"]]
interviews$memb_assoc

##### Dates #####
dates <- interviews$interview_date
dates

class(dates)
as_date(dates)

dates_clean <- as_date(dates)
class(dates_clean)

interviews$interview_date <- dates_clean # remove time and clean it to date
day(dates) # can extract and see only day
month(dates)
year(dates)

interviews$day <- day(dates)
interviews$month <- month(dates)
glimpse(interviews)



# 1. Select columns
# 2. Filter rows
# 3. Create new columns based on data from rows
# 4. Summaries of columns
# 5. Arrange our rows

# Select columns -----------------------------------------------------
# Cmd + Shift + R

?select()
select(interviews, key_ID, village, respondent_wall_type)
select(interviews, village:rooms)
select(interviews, -instanceID)


# Filter rows ---------------------------------------------------------
distinct(interviews, village)
filter(interviews, village == "Chirodzo")


