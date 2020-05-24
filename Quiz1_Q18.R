 setwd("/Users/josephine-koay/Desktop/R_prog_JHU")
 df <- read.csv("hw1_data.csv")
 
 
 #Question 18: Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
 
 #rows where Ozone values > 31
 x <- df[df$Ozone>31,]
 
 #rows where Temp values >90
 y <- df[df$Temp>90,]
 
 #find intersection of 2 dataframes
z<- intersect(x,y)
mean(z$S)


#Question 19: What is mean "Temp" when month=6?  

JuneT <- df[df$M==6,]$T
mean(JuneT)

#Q20: What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

MayO <- df[df$M==5,]$O
MayOzone <- MayO[!is.na(MayO)]
max(MayOzone)
