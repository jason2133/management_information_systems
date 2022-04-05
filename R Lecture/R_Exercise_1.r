###R Exercise Code: Basic Expression ###

# This is a comment. It won't be evaluated by R

## Value: a record (fact) about an object ##
1          #Number
a          #This is a string, but have to use "" or''
'a'        #String
'1'        #String?

class (1)                           # Value type
class ('1')                         # Value type, Yes, '1' is a string

as.numeric('1') + as.numeric('2')   # We can convert it to a numeric value!

1; 2; 'a'                           # Run multiple commands in a single line


## Arthmetic Operations ##
2 + 1    # Addition
2 - 1    # Substraction
2 * 1    # Multiplcation
2 / 1    # Division
2^3      # Sames as 2*2*2


## Logical Expression ##
3 < 2                               # True or False
3 == 1+2                            # Same?
3 != 1+2                            # != means "not equal to"
'A' == 'a'                          # R is case-sensitive


## (Scalar) Variable ##
a <- 3  # <- means '3' is assigned to a storage/variable named 'a'
a
b = 3   # we can also use the "=" sign, but not recommended
b

var1 <- "aaa"              #String or Character value 
var2 <- 111                #Number

var1
var2

class(var1)
class(var2)

num1 <- 1
num2 <- 2

num1 + num2    # We can use vectors for math operations

num3 <- '3'    # Again, this is a string
num1 + num3    # It's an error

num1 + as.numeric(num3) # Convert string to number



## Vectors #
vec1 <- 1:5; vec1            # numbers from 1 to 5
vec2 <- seq(1,5); vec2       # seq() is a function generating numbers in sequence 
vec3 <- c(4,5,6,7,8);vec3    # We can manually add numbers to a vector
vec4 <- c('a','b','c');vec4  # A vector can contain string values
vec5 <- c(4,'a');vec5        # Values in a vector should be the same type

class(vec5)            # R consider vec5 as a string vector

vec1*3                 # Carry out arithmetic with scalars
vec6 <- vec1 * vec3; vec6    # You can store vec1 * vec3 into antoher variable


vec6
vec6[3]                # The 3rd element of vec6
vec6[-3]               # Display all the elements except the 3rd element
vec6[2:4]              # Elements from the second to fourth
vec6[c(3,5)]           # Elements in the 3rd and 5th poisitons
       
vec6[4] <- 20          # Change the fourth value to 20

vec6 < 30              # See if elements of vec6 are smaller than 30
vec6[vec6<30]          # Extract only elements of vec6 less than 30 

names(vec6) <- c("First", "Second", "Third", "Fourth", "Fifth")  # add names\labels
vec6

vec6["Second"]            #Get the value in the "Second" position  
vec6["Second"]   <- 50    #Set a different value
vec6["Second"]

length(vec6)            # number of elements in vec6


## Variable/Vector Management ##

objects()              # Display all variables created
rm(a)                  # Remove  a variable from the memory
rm(vec1)             
objects()              # 'a' and 'vec1' were removed

rm(list=ls())          # Remove all the variables in the memory
objects()              # Now your memory space is empty!



## Function: a pre-defined or -written command (by someone) to perform a specfic task ##
log(10)                # This is a function that caluate the logarithm value of 10
help(log)              # Use the help function to get the usage of a function
log(4, base=2)
example(log)           # Display examples of a function   





