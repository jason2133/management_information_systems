rm(list=ls())

## Step 0 ##
adm <- read.csv('C:/Users/jason/¹ÙÅÁ È­¸é/coding1/management_information_systems/R_Team_Project/admission.csv')
adm


## Step 1 ##
library(dplyr)

adm <- adm %>% mutate(GRE_Rank = 
                           case_when(gre <= 300 ~ 'NQ',
                                     300 < gre & gre <= 550 ~ 'Low',
                                     550 < gre & gre <= 700 ~ 'Mid',
                                     700 < gre & gre <= 800 ~ 'High'))
adm <- adm %>% mutate(GPA_Rank = 
                           case_when(gpa <= 2.0 ~ 'NQ',
                                     2.0 < gpa & gpa <= 3.0 ~ 'Low',
                                     3.0 < gpa & gpa <= 3.5 ~ 'Mid',
                                     3.5 < gpa & gpa <= 4.0 ~ 'High'))

adm <- adm %>% mutate(SCH_Rank = 
                        case_when(rank==4 ~ 'NQ',
                                  rank==3 ~ 'Low',
                                  rank==2 ~ 'Mid',
                                  rank==1 ~ 'High'))

head(adm)

## Step 2 ##
# Q1
count(filter(adm, GPA_Rank=='Mid'))

# Q2
count(filter(adm, GPA_Rank=='Low' | GRE_Rank=='Low' | SCH_Rank=='Low'))

# Q3
mean(adm[adm$GRE_Rank!='NQ',]$gre)

## Step 3 ##
# adm <- adm %>% mutate(Overall_Score = 0.5*GRE_Rank + 0.3*GPA_Rank + 0.2*SCH_Rank)

## Step 4 ##
# Q4 : Prob(admit = 0)
count(filter(adm, admit==0)) / count(adm)

# library(prob)
# Prob(adm, adm$admit==0)

# Q5 : Prob(admit = 1)
count(filter(adm, admit==1)) / count(adm)


# Q2 <- mean(adm[adm$SCH_Rank])

# Q6
# Calculate Prob(admit=0 | GRE_Rank = NQ)
# / count(filter(adm, GRE_Rank=='NQ'))
# Prob(B, given=A)




##################################################

Q1 <- nrow(adm[adm$SCH_Rank=='High', ]); Q1
Q1_1 <- nrow(subset(adm, SCH_Rank=='High')); Q1_1

# Q2
Q2 <- mean(adm[adm$SCH_Rank=='High', 'gpa']); Q2

# Q3
Q3 <- mean(adm[adm$GRE_Rank != 'Low', 'gre']); Q3

# Q4
numerator1 <- nrow(adm[adm$admit==0, ])
denomiator1 <- nrow(adm)
Q4 <- numerator1 / denomiator1; Q4

# or
mean(adm$admit)
mean(adm$admit==0)
mean(adm$admit==1)

# write.csv(adm, file='aaa.csv')