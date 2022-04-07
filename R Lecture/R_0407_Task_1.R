rm(list=ls())

# Step 0
idx <- c('P01', 'P02', 'P03', 'P04')
idx

name <- c('Monitor', 'Mouse', 'Keyboard', 'Printer')
name

price <- c(300.99, 50.50, 40.38, 75.52)
price

qty <- c(9, 30, 25, 9)
qty

discount_rate <- c(50, 20, 0, 30)
discount_rate

Sales <- data.frame(ID=idx, Name=name, Price=price, QTY=qty, Discount_Rate=discount_rate)
Sales

# Step 1
Sales <- rbind(Sales, data.frame(ID='P05', Name='Speaker', Price=39.99, QTY=9, Discount_Rate=15))
Sales

# Step 2
final_price <- function(x) {
  x[3] * (1-(x[5] / 100)) * x[4]
}

final_price(Sales)

Sales <- cbind(Sales, Final_Price=final_price(Sales))
names(Sales)[6] <- c("Final_Price")
Sales

# Step 3
Sales[Sales$Final_Price < mean(Sales$Final_Price), 2]


# for(i in 1:length(Sales)) {
#   if (Sales[i, 6] < averaged_final_price) {
#     print(Sales[i, 2])
#   }
# }
