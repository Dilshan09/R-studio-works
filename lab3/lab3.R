getwd()
setwd("D:\\R wokings\\lab3")
getwd()


#import csv file
data<-read.csv("DATA 3.csv",header = TRUE)
data

#get data in the editor mode
fix(data)

#rename columns
names(data)<-c("Age","Gender","Accommodation")
fix(data)

#rename categorical data
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
fix(data)


data$Accommodation<-factor(data$Accommodation,c(1,2,3),c("Stays at Home","Boarded Students","Lodging"))
fix(data)

#attach data
attach(data)

#frequency table for Gender
gender.freq<-table(Gender)
gender.freq



#frequency table for Accommodation
acc.freq<-table(Accommodation)
acc.freq


#pie chart for Gender
pie(gender.freq,"Pie Char for Gender")

#pie chart for Accomodation
pie(acc.freq,"Pie char for the Accomodation")


#bar plot
barplot(gender.freq,main = "Bar plot for Gender", ylab = "Frequency", xlab = "Gender")
abline(h = 0)# to start x axis within 0



#boxplot
boxplot(Age,main="Boxplot for Age", ylab="Age of Student",outpch=8)


#two way frquency table1
gender_acc.freq<-table(Gender,Accommodation)
gender_acc.freq


#stack bar charts
barplot(gender_acc.freq,main="Gender & Accomodation", legend = rownames(gender_acc.freq))
abline(h=0)


#clustered bar charts
barplot(gender_acc.freq,beside = TRUE,main="Gender & Accomodation", legend = rownames(gender_acc.freq))
abline(h=0)




########### Q4 ########### 

#side by side boxplot
boxplot(Age~Gender,main="Box plot for age by gender",xlab = "Gender" ,ylab = "Age")

boxplot(Age~Accommodation,main="Box plot for age by Accommodation",xlab = "Accommodation" ,ylab = "Age")



########### Q5 ########### 

xtabs(Age~Gender+Accommodation)/gender_acc.freq












