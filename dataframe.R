subject<-c(1:7)
Gender<-c("Male","Male","Male",NA,"Female","Female","Female")
Age=c(23,34,32,54,65,45,35)
Weight=c(67.5,NA,63.7,56.8,89.9,87.5,77.5)
df=data.frame(subject,Gender,Age,Weight)
View(df)

df[4,3]
#indexing
df[4,3]
df[,3]
library(data.table)
#Rename the column name 
setnames(df,'subject','Participants')
View(df)
df[Age]
df1=df[!complete.cases(df),3]
df1
#Rename values in the Columns
df$Age[df$Participants==6]<-58
View(df)
df$Gender[df$Participants==4]<-"Female"
View(df)
df$Weight[df$Participants==2]<-65
View(df)

