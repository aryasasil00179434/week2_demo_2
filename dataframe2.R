Manager<-c(1:5)
Date=c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
Country=c("US","US","IRL","IRL","IRL")
Gender=c("M","F","F","M","F")
Age=c(32,45,25,39,99)
q1=c(5,3,3,3,2)
q2=c(4,5,5,3,2)
q3=c(5,2,5,4,1)
q4=c(5,5,5,NA,2)
q5=c(5,5,2,NA,1)
library(data.table)
df=data.frame(Manager,Date,Country,Gender,Age,q1,q2,q3,q4,q5)
View(df)
df$Age[df$Manager==5]<-NA
#or  df$Age[df$Age==99]<-NA
View(df)
#Add Col
df$AgeCategory<-c(10,22,33,44,50)
#Remove Col
df_1<-subset(df,select = -Manager)
#df_1<-subset(df,select = -1)
View(df_1)
df<-df[,c(2:11)]
View(df)
#To Print rows from 1 to 4 and entr col 
df[1:4,] 
df[1:3,1:3]
#to Print 1 and 3 rows with 1 to 3 colums
df[c(1,3),1:3]
#print rows(1,3,5) and columns(2,4)
df[c(1,3,5),c(2,4)]
df_3<-df[c(1,3,5),c(2,4)]
View(df_3)
#logical Structure
str(df)
df<-subset(df,select = -AgeCategory)
df$Age_Cat[df$Age>=45]<-"Elder"
df$Age_Cat[df$Age<=25]<-"Young"
df$Age_Cat[df$Age>26 & df$Age<44]<-"Middle Aged"
df
df
df$Age_Cat<-factor(df$Age_Cat,
                   order=TRUE,
                   levels=c("Young","Middle Aged","Elder"))
df
df$Age_Cat<-Age_Cat
df
str(df)
summary_col<-df$q1+df$q2+df$q3+df$q4+df$q5
summary_col
