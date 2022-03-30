#### R Exercise: Data.Frame  ####
rm(list=ls())


## Data.Frame ##
# From vectors to a data.frame #
idx      <- 1:4; idx
name     <- c('Apple', 'Peach', 'Banana', 'Grape'); name
unit_price    <- c(10, 8, 6, 12); unit_price
quantity <- c(5,2,4,7); quantity

sales <- data.frame(ID=idx, Product=name, Price=unit_price, QTY=quantity)
sales

# Indexing #
sales[ ,2]
sales[ ,'Product']
sales$Product

sales[3, ]
sales[c(1,2), ]
sales[ ,c(1,2)]
sales[ ,1:3]
sales[1:2, 3:4]

# Subset ##
sales[sales$QTY <5, ]
sales[sales$Price == 10, ]
sales[sales$Product == 'Banana', ]

subset(sales, QTY<5)
subset(sales, Price==10)
subset(sales, Product=='Banana')


# Math Operations #
total_amount <- sales$Price * sales$QTY; total_amount

# Additional Rows and Columns #
sales <- cbind(sales, data.frame(Amount=total_amount)); sales
sales <- rbind(sales, data.frame(ID=5,Product='Berry', Price=7, QTY=5, Amount=35))
sales

# Useful Functions #
nrow(sales)
ncol(sales)
names(sales)
colnames(sales)


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

Mat1 <- matrix(1,2,3); Mat1

Mat_dim <- function(x) {c(nrow(x),ncol(x))}
Mat_dim(Mat1)
