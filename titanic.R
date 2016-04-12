#install packages
install.packages("tidyr")
library("tidyr")

install.packages("dplyr")
library(("dyplyr"))


#about data set
str(titanic_original)

#Update missing value in Port of Embarkation column
#select row where embarked blank and recode with S
titanic_original$embarked[titanic_original$S == ""] <- NA

#Testing for missing values 
is.na(titanic_original$embarked) 

#mean of age column
#mean_age<- mean(titanic_original$age, na.rm = TRUE)
#mean = 29.88

#median of age column
#median_age<- median(titanic_original$age, na.rm = TRUE)
#median = 28

#fill missing age values
titanic_original$age[is.na(titanic_original$age)]<- mean(titanic_original$age, na.rm = TRUE)

#fill missing boat values with dummy value of NA
is.na(titanic_original$boat)<- which(titanic_original$boat == "")

#fill missing cabin values with dummy value of NA
is.na(titanic_original$cabin)<- which(titanic_original$cabin == "")

#create new column has_cabin to display values of 1 for cabin and 0 for no cabin
titanic_original$has_cabin<- ifelse(titanic_original$cabin == "NA", 0,1)
fix(titanic_original)

