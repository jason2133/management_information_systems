##Seminar 4 - Functions and If-else##
rm(list=ls())


## Task 1 ##

FN1 <- function(p,d) {p*(1-d/100)}
FN1(2.99, 10)

## Task 2 ##
FN2 <- function(x) {ifelse(x%%2 == 0, "Even Number", "Odd Number")}

FN2(40)
FN2(39)
