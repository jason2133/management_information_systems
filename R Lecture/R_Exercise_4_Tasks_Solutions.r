## Group Task##
rm(list=ls())

## Step 0 ##
adm <- read.csv("admission.csv")

## Step 1 ## 

# With IfElse #
GRE_Rank <- ifelse(adm$gre <= 400, "Low", ifelse(adm$gre > 701, "High","Mid"))
GPA_Rank <- ifelse(adm$gpa <= 3.0, "Low", ifelse(adm$gpa > 3.6, "High","Mid"))
SCH_Rank <- ifelse(adm$rank == 4, "Low", ifelse(adm$rank == 1,"High","Mid"))
adm <- cbind(adm,data.frame(GRE_Rank, GPA_Rank, SCH_Rank)); 
head(adm)

## Step 2: Q1 - Q2 ## 
Q1 <- nrow(adm[adm$SCH_Rank == 'High',  ]); Q1
Q2 <- mean(adm[adm$GRE_Rank != 'Low', 'gre']); Q2 



## Step 3: Q3 -Q4#

#Q3#
numerator1   <- nrow(adm[adm$admit == 0,  ]) 
denominator1 <- nrow(adm)

Q3 <- numerator1 / denominator1 ; Q3

#Q4#
numerator2   <- sum(adm[adm$GRE_Rank == 'High' ,'admit'])
denominator2 <- nrow(adm[adm$GRE_Rank == 'High',  ])

Q4 <- numerator2 / denominator2 ; Q4


# or
1- mean(adm$admit)
mean(adm[adm$GRE_Rank == 'High' ,'admit']) 


# Step 4 #
write.csv(adm, file="BUS215_Adm_GXX.csv", row.names=FALSE)
