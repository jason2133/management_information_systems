# Task 1
fn1 <- function(A,B) { A * (1 - (B / 100))}
fn1(2.99, 10)

# Task 2
fn2 <- function(A) { ifelse((A %% 2 == 0), 'Even Number', 'Odd Number')}
fn2(40)
fn2(39)

# Task 3
fn3 <- function(x, y) {
    sum(x^c(1:y) / c(1:y))
  }

fn3(1, 3)


