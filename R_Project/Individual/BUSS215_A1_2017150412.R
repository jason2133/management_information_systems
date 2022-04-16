rm(list=ls())

## Task 1 ##
A = seq(1, 5, by=1)^seq(2, 10, by=2) * 4^seq(10, 2, by=(-2)); A
B = sum(seq(2, 10, by=1)^2 + 2^(seq(2, 10, by=1))) + sum(sum(seq(1, 20, b=1)^2) / (2 + seq(2, 15, by=1))); B

## Task 2 ##
# Step 1
C <- c(1, 1, 0 ,0); C
D <- c(0, 1, 0, 1); D
Input <- data.frame(C, D); Input

# Step 2
# I have used the R package 'dplyr' to solve the Step 2 and Step 3.
# If you want to use the R package 'dplyr', you can uncomment the comment below and install the package.
# After you install the package, you can activate the code below.

# install.packages('dplyr')

library(dplyr)

Output <- Input %>% mutate(OR = ifelse(C==1 | D==1, 1, 0))
Output <- Output %>% mutate(AND = ifelse(C==1 & D==1, 1, 0))
Output <- Output %>% mutate(XOR = ifelse((C==1 & D==0) | (C==0 & D==1), 1, 0))
Output
     
# Step 3
Result <- Output
Result

## Task 3 ##
admission <- read.csv('C:/Users/jason/¹ÙÅÁ È­¸é/coding1/management_information_systems/R_Project/Individual/admission.csv'); head(admission)

Summary <- function(x, y) {
  Num = nrow(x[y])
  Mean = mean(x[,y])
  SD = sd(x[,y])
  Min = min(x[,y])
  Max = max(x[,y])
  result = data.frame(Num=Num, Mean=Mean, SD=SD, Min=Min, Max=Max)
  result
}

Summary(admission, 1)
Summary(admission, 2)
Summary(admission, 3)
Summary(admission, 4)

## Task 4 ##
FN <- function(A, B) {
  if (A > 0 & B > 0 & (A%%2 != 0) & (B%%2 != 0)){
    A + B
  }
  else if ((A < 0 & (A%%2 != 0)) | (B < 0 & (B%%2 != 0))) {
    A - B
  }
  else if ((A < 0 & (A%%2 == 0)) & (B < 0 & (B%%2 == 0))) {
    A * B
  }
  else if ((A > 0 & (A%%2 == 0)) | (B > 0 & (B%%2 == 0))) {
    A / B
  }
  else {
    A^B
  }
}

FN(2, 2)
FN(2, 1)
FN(1, 2)
FN(1, 1)
FN(-2, -2)
FN(-2, -1)
FN(-1, -2)
FN(-1, -1)
