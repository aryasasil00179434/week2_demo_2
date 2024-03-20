manager_data<-read.csv("managers.csv")
View(manager_data)
manager_data
#omit NA Values
new_data<-na.omit(manager_data)
new_data
#complete True not Complete False
complete_data<-complete.cases(manager_data)
complete_data
#not Operator gives direct opposite
complete_data1<-!complete.cases(manager_data)
complete_data1
#sum of complete cases
Sum_comp<-sum(complete_data)
Sum_comp
#list all the rows do not have missing values
complete_data2<-manager_data[complete.cases(manager_data),]
complete_data2
nrow(complete_data2)
nrow(manager_data)
dim(manager_data)
#for missing values
complete_data3<-manager_data[!complete.cases(manager_data),]
complete_data3
nrow(complete_data3)

dim(manager_data)
#find sum of all missing values in age
is.na(manager_data$Age)
sum(is.na(manager_data$Age))
#find the mean of missing values of age
mean(is.na(manager_data$Age))
#no missing data
mean(!is.na(manager_data$Age))
#complete cases
mean(!complete.cases(manager_data))
#identify missing values
install.packages("mice")
library(mice)
md.pattern(manager_data)

install.packages("VIM")
library(VIM)
missing_data<-aggr(manager_data,prop=FALSE,numbers=TRUE)
summary(missing_data)
missing_data1<-aggr(manager_data,prop=TRUE,numbers=TRUE)
summary(missing_data1)
matrixplot(manager_data)

#correlation matrix
missing_values<-as.data.frame(abs(is.na(manager_data)))
head(missing_values)
correlation_matrix<-missing_values[(apply(missing_values,2,sum)>0)]
correlation_matrix
cor(correlation_matrix)
#merging