

## Task1 ##
#Step 0#
id       <- c('P01', 'P02', 'P03', 'P04')
name     <- c('Monitor', 'Mouse', 'Keyboard', 'Printer')
price    <- c(300.99, 50.50, 40.38, 75.52)
qty      <- c(9,30,25,9)
discount <- c(50,20,0,30)

Sales <- data.frame(ID=id, Name=name, Price=price, QTY=qty, Discount_Rate=discount); Sales

#Step 1#
Sales <- rbind(Sales, data.frame(ID='P05',Name='Speaker', Price=39.99, QTY=9, Discount_Rate=15)); Sales

#Step 2#
f_price <- ((1-(Sales$Discount_Rate/100))*Sales$Price)

Sales <- cbind(Sales,data.frame(Final_Price=f_price)); Sales

#Step 3#
Sales[Sales$Final_Price < mean(Sales$Final_Price), "Name"]
#or, subset(Sales, Final_Price < mean(Final_Price))$Name

#or, subset(Sales$Name, Sales$Final_Price < mean(Sales$Final_Price))





