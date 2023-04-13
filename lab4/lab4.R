getwd()
setwd("D:\\R wokings\\lab4")
getwd()


#import text  file
data<-read.table("DATA 4.txt",header = TRUE,sep = "")
data

#get data in the editor mode
fix(data)

#rename columns
names(data)<-c("Team","Attendance","Salary","Years")
fix(data)

#accessing variable of columns directly without calling whole dataset
attach(data)

#boxplot for Attendance
boxplot(Attendance,main="Boxplot for Attendance",outline = TRUE,xLab="Attendance" ,horizontal = TRUE)#if you want horizontal can add

#boxplot for Salary
boxplot(Salary,main="Boxplot for Salary",outline = TRUE,xLab="Salary")

#boxplot for Years
boxplot(Years,main="Boxplot for Years",outline = TRUE,xLab="Years")

#Histogram for Attendance
hist(Attendance,main = "Histogram for Attendance",ylab = "Frequency")

#Histogram for Salary
hist(Salary,main = "Histogram for Salary",ylab = "Frequency")

#Histogram for Years
hist(Years,main = "Histogram for Years",ylab = "Frequency")



#stem and leaf

stem(Attendance,scale = 1,width = 80,atom = 1e-08)#default R one

stem(Attendance)

stem(Salary)

stem(Years)




#find mean

mean(Attendance)

mean(Salary)

mean(Years)



#find median

median(Attendance)

median(Salary)

median(Years)




#find standard deviation

sd(Attendance)

sd(Salary)

sd(Years)




#summary for every columns

summary(Attendance)

summary(Salary)

summary(Years)




#quantile value for all quantile

quantile(Attendance)

#Q1
quantile(Attendance)[2]

#Q2
quantile(Attendance)[3]

#Q3
quantile(Attendance)[4]




#Inter Quantile range

IQR(Attendance)

IQR(Salary)

IQR(Years)




#Question 3

get.modes <- function (y){

  counts<-table(y)
  names(counts)[counts==max(counts)]
  
}
  
get.modes(Years)


#Question 4

get.outliers<-function(z){
  
  q1<-quantile((z))[2]
  q3<-quantile((z))[4]
  iqr<-q3-q1
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound",ub)) #if we give paste0 for paste then no need to use collapse command in below line
  print(paste("Lower Bound",lb))
  print(paste("Outliers",paste(sort(z[z<lb|z>ub]),collapse = ",")))

}

get.outliers(Years)

get.outliers(Attendance)

get.outliers(Salary)












































