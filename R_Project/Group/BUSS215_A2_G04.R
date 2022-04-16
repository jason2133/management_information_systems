rm(list=ls())

## Step 0 ##
adm <- read.csv('C:/Users/jason/¹ÙÅÁ È­¸é/coding1/management_information_systems/R_Project/Group/admission.csv')
adm

## Step 1 ##
# We have used the R package 'dplyr' to solve the Step 1.
# If you want to use the R package 'dplyr', you can remove the comment below and install the package.
# After you install the package, you can activate the code below.

# install.packages('dplyr')

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
Q1 <- nrow(subset(adm, GPA_Rank=='Mid')); Q1

# Q2
Q2 <- nrow(subset(adm, SCH_Rank=='Low')); Q2

# Q3
Q3 <- mean(adm[adm$SCH_Rank!='NQ',]$gre); Q3

## Step 3 ##
adm <- adm %>% mutate(GRE_Rank_num = 
                        case_when(GRE_Rank == 'NQ' ~ 10,
                                  GRE_Rank == 'Low' ~ 40,
                                  GRE_Rank == 'Mid' ~ 70,
                                  GRE_Rank == 'High' ~ 100))

adm <- adm %>% mutate(GPA_Rank_num = 
                        case_when(GPA_Rank == 'NQ' ~ 10,
                                  GPA_Rank == 'Low' ~ 40,
                                  GPA_Rank == 'Mid' ~ 70,
                                  GPA_Rank == 'High' ~ 100))

adm <- adm %>% mutate(SCH_Rank_num = 
                        case_when(SCH_Rank == 'NQ' ~ 10,
                                  SCH_Rank == 'Low' ~ 40,
                                  SCH_Rank == 'Mid' ~ 70,
                                  SCH_Rank == 'High' ~ 100))

adm <- adm %>% mutate(Overall_Score = 0.5*GRE_Rank_num + 0.3*GPA_Rank_num + 0.2*SCH_Rank_num)
adm <- adm[-c(8, 9, 10)]
head(adm)

## Step 4 ##
# Q4
Q4 <- mean(adm$admit==0); Q4

# Q5
Q5 <- mean(adm$admit==1); Q5

# Q6
a6 <- adm[(adm$admit==0) & (adm$GRE_Rank=='NQ'), ]; a6; nrow(a6)
b6 <- adm[adm$GRE_Rank=='NQ',]; b6; nrow(b6)
Q6 <- nrow(a6) / nrow(b6); Q6

# Q7
a7 <- adm[(adm$admit==1) & (adm$GPA_Rank!='High'), ]; a7; nrow(a7)
b7 <- adm[adm$GPA_Rank!='High',]; b7; nrow(b7)
Q7 <- nrow(a7) / nrow(b7); Q7

# Q8
a8 <- adm[(adm$admit==0) & (adm$SCH_Rank=='Low'), ]; a8; nrow(a8)
b8 <- adm[adm$SCH_Rank=='Low',]; b8; nrow(b8)
Q8 <- nrow(a8) / nrow(b8); Q8

# Q9
a9 <- adm[(adm$admit==1) & (adm$Overall_Score>75), ]; a9; nrow(a9)
b9 <- adm[adm$Overall_Score>75,]; b9; nrow(b9)
Q9 <- nrow(a9) / nrow(b9); Q9

# Q10
a10 <- adm[(adm$admit==0) & (adm$Overall_Score<30), ]; a10; nrow(a10)
b10 <- adm[adm$Overall_Score<30,]; b10; nrow(b10)
Q10 <- nrow(a10) / nrow(b10); Q10

## Step 5 ##
write.csv(adm, file='C:/Users/jason/¹ÙÅÁ È­¸é/coding1/management_information_systems/R_Project/Group/BUSS215_A2_G04.csv')
