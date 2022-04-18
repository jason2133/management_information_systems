# Step 1
X3 <- c(5, 7, 9, 11)
X4 <- c(100, 200, 300, 400)

Input2 <- data.frame(X3, X4)
Input2  

# Step 2
SUMMARY <- function(x) {
  mean = mean(x)
  sd = sd(x)
  result = c(mean, sd)
  result
}

SUMMARY(Input2$X3)
SUMMARY(Input2$X4)

# Step 3
NORM <- function(x) {
  k = (x - min(x)) / (max(x) - min(x))
  k
}

NORM(Input2$X3)
NORM(Input2$X4)
