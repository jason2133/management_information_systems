## Cluster Analysis: Luxuary bags ##
rm(list=ls(all=TRUE)) # Clear all 

## Install Required Packages for Cluster Analysis##
install.packages(“cluster”)
library(cluster)

## Load the Data ##
bags <- read.csv("bags.csv"); bags

## Use only the Bags' 7 Attributes ##
bag_attribute <- bags[ , -1]; bag_attribute

## K-means Clustering: Two Groups of Bags ##
bag_KM_2 <- kmeans(bag_attribute, 2)
bag_KM_2$size# Number of bags in each group#
result_2 <- cbind(bags[,1],bag_KM_2$cluster)
result_2  # This present each bag's group (1 or 2)
  

## K-means Clustering: Three Groups of Bags ##
bag_KM_3 <- kmeans(bag_attribute, 3)

bag_KM_3$size # Number of bags in each group
result_3 <- cbind(bags[,1],bag_KM_3$cluster)
result_3  # This present each bag's group (1, 2, or 3)

