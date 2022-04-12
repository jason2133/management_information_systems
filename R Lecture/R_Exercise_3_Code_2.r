####Seminar 4: Functions and IF-ELSE  ####
rm(list=ls())

## Functions ##
M <- seq(1,5)
mean(M) 
help(mean)
example(mean)

#Create a function#
My_mean <- function(x) {sum(x)/length(x)} 
My_mean(M)

My_mean2 <- function(x,y) {sum(x:y)/length(x:y)}
My_mean2(1,5)


## IF Else Statement##
# Evaluate if the given number is positive, negative, or zero"
Num1 <- 3
Num2 <- -3
Num3 <- 0

# ifelse(a,b,c): If a is true, it returns b. otherwise, it returns c. #

# with one condition#
ifelse(Num1 >0, "Postive Number" , "Negative Number")
ifelse(Num2 >0, "Postive Number" , "Negative Number")
ifelse(Num3 >0, "Postive Number" , "Negative Number")


# with two or more conditions #
ifelse(Num1 > 0, "Positive Number", ifelse(Num1 < 0, "Negative Number", "Zero"))
ifelse(Num2 > 0, "Positive Number", ifelse(Num2 < 0, "Negative Number", "Zero"))
ifelse(Num3 > 0, "Positive Number", ifelse(Num3 < 0, "Negative Number", "Zero"))


3%%2  # Modulus operation 
      # %% finds the remainder after division of one number by another

ifelse(Num1%%2 == 0, "Even Number", "Odd Number") # X%%Y is X mod Y



# Return A*B if A and B are both positive #
# Return A+B if either A or B is negative or zero #
fn1 <- function(A,B) { ifelse((A > 0) & (B > 0), A*B, A+B)}
fn1(2,3)
fn1(2,-1)

fn2 <- function(A,B) {ifelse((A <= 0) | (B <= 0),A+B, A*B)}   # | means 'or'
fn2(2,3)
fn2(2,-1)



