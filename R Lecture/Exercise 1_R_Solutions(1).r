#Task 1#
A <- (32-12)/abs(403-512); A
B <- ((2/A)*4^5) * sqrt(13); B
C <- B*(log(27, base = 3)+log(625, base = 5)); C
D <- C /(4*A + 5*B); D

D > 1

#Task 2 #
E <- seq(0.1, 2.1, 0.5); E
F <- seq(21, 1, -5); F

G <-(log10(E)/F)*100; G
G[3]
length(G)


#Task 3#
H <- 5:9; H

K <- c(H[1:3], H[5]); K
# or K <- H[-4] 
K[5] <- 10 ; K[6] <- 20; K

names(K) <- c("First", "Second", "Third", "Fourth", "Fifth", "Sixth"); K

K["Second"] <- 30
K["Fifth"] <- 40
K
K["First"] <- (K["Second"] + K["Fourth"]) / 2; K

mean(K)
sd(K)