getwd()
setwd("D:\\R wokings\\lab6")
getwd()

#Q1

#import text  file
data<-read.table("Forest.txt",header = TRUE,sep = ",")
data

#get data in the editor mode
fix(data)

attach(data) #attach the data to the R

#Q2 
#give the summary of the structure of the data set.
str(data)#normal summary


#Q3
517 observations

#Q4
max(wind)
min(wind)


#Q5
summary(temp)#summary for five nimber summary


#Q6
boxplot(wind,horizontal = TRUE, outline = TRUE , pch = 4)
# if give horizontal = FALSE it shows vertically
# if give outline = FALSE it don't show outliers
# pch give the outliers shapes


#negativily skewed destribution 
#if have dought about destribution think median that means Q2 and think a bout destribution


#Q8
median(temp)


#Q9
mean(wind) #wind means variable name

sd(wind) #standard variation


#Q10
IQR(wind)


#Q11
#2 way frequency table for day and month 
freq<-table(day,month)
freq

freq<-table(month,day)#we can change axices
freq



#Q12
mean(temp[month=="sep"])



#Q13
count<-table(day[month=="jul"])
names(count[count==max(count)])





















