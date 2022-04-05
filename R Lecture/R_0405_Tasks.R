# Task 1
a = (32 - 12) / abs(403-512)
a

b = ((2 / a) * 4^5) * sqrt(13)
b

c = b * (log(27, base=3) + log(625, base=5))
c

d = c / (4*a + 5*b)
d

d > 1

# Task 2
e <- seq(0.1, 2.1, length=5)
e
e <- seq(0.1, 2.1, by=0.5)
e

f <- seq(21, 1, length=5)
f
f <- seq(21, 1, by=-5)
f

g <- (log(e, base=10) / f) * 100
g

## Q3
e
f
g

## Q4
g[3]

## Q5
length(g)

# Task 3
H <- c(5, 6, 7, 8, 9)
H

K <- H[-4]
K
K <- append(K, c(10, 20))
K
names(K) <- c('First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth')
K

K[2] <- 30
K[5] <- 40

K[1] <- mean(c(K[2], K[4]))
K

mean(K)
sd(K)
  
