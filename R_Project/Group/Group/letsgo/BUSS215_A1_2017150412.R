## Task 1 ##
A = seq(1, 5, by=1)^seq(2, 10, by=2) * 4^seq(10, 2, by=(-2)); A
B = sum(seq(2, 10, by=1)^2 + 2^(seq(2, 10, by=1))) + sum(sum(seq(1, 20, b=1)^2) / (2 + seq(2, 15, by=1))); B

## Task 2 ##
# Step 1
C <- c(1, 1, 0 ,0)
D <- c(0, 1, 0, 1)
Input <- data.frame(C, D); Input

# Step 2
OR <- ifelse(Input$C==1 | Input$D==1, 1, 0)
AND <- ifelse(Input$C==1 & Input$D==1, 1, 0)
XOR <- ifelse((Input$C==1 & Input$D==0) | (Input$C==0 & Input$D==1), 1, 0)
Output <- cbind(data.frame(OR=OR, AND=AND, XOR=XOR)); Output

# Step 3
Result <- cbind(Input, Output); Result

## Task 3 ##
admission <- read.csv('admission.csv')

Summary <- function(x, y) {
  result = data.frame(Num=nrow(x[y]), Mean=mean(x[,y]), SD=sd(x[,y]), Min=min(x[,y]), Max=max(x[,y]))
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