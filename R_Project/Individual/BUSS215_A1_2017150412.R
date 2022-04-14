## Task 1 ##
A = seq(1, 5, by=1)^seq(2, 10, by=2) * 4^seq(10, 2, by=(-2)); A
B = sum(seq(2, 10, by=1)^2 + 2^(seq(2, 10, by=1))) + sum(seq(1, 20, b=1)^2 / (2 + seq(2, 15, by=1))); B
# B 재검토 필요

## Task 2 ##
# Step 1
C <- c(1, 1, 0 ,0); C
D <- c(0, 1, 0, 1); D
Input <- data.frame(C, D); Input

# Step 2
library(dplyr)
Input <- Input %>% mutate(OR = ifelse(C==1 | D==1, 1, 0))
Input <- Input %>% mutate(AND = ifelse(C==1 & D==1, 1, 0))
Input <- Input %>% mutate(XOR = ifelse((C==1 & D==0) | (C==0 & D==1), 1, 0))
Input
     
# Step 3
Result <- Input
Result

## Task 3 ##
admission <- read.csv('C:/Users/jason/바탕 화면/coding1/management_information_systems/R_Project/Individual/admission.csv'); head(admission)

Summary <- function(x, y) {
  Num = nrow(x[y])
  Mean = mean(x[y])
  SD = sd(x[y])
  Min = min(x[y])
  Max = max(x[y])
  
  
}

Summary(admission, 1)



SUMMARY <- function(x) {
  mean = mean(x)
  sd = sd(x)
  result = c(mean, sd)
  result
}

SUMMARY(Input2$X3)

## Task 4 ##
