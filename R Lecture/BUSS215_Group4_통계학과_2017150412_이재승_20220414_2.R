rm(list=ls())

# Step 0
adm <- read.csv('C:/Users/jason/¹ÙÅÁ È­¸é/coding1/management_information_systems/R_Team_Project/admission.csv')
adm


# Step 1
library(dplyr)

adm <- adm %>% mutate(GRE_Rank = 
                        case_when(gre <= 500 ~ 'Low',
                                  500 < gre ~ 'High'))

adm <- adm %>% mutate(GPA_Rank = 
                        case_when(gpa <= 3.0 ~ 'Low',
                                  3.0 < gpa ~ 'High'))

adm <- adm %>% mutate(SCH_Rank = 
                        case_when(rank==4 | rank==3 ~ 'Low',
                                  rank==2 | rank==1 ~ 'Mid'))

head(adm)




