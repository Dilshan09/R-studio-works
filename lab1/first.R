print(100:150)
#this ias mt comments
#get the current working directory
getwd()

#to set the current working directory
setwd("D:\\R wokings\\lab1")
getwd()


#to set the current working directory another method
#setwd("D:/R wokings/lab1")
#getwd()

#help
?solve

help("data.frame")

#install packages
install.packages("ggplot2")

#scalar opperations
2+8
900-76
50*6
50/4
4^2


#logical operators
x=5
y = -4

isTRUE(x==y)
isTRUE(x>y)
isTRUE(x<=y)
isTRUE(x==6)
isTRUE(x<6 & y>0)
isTRUE(x<6 | y>0)
isTRUE(x!=y)


#assignment operators
#local envioronment
a=5
a<=5

#global environment
a<<=5

#vector
w<-C(1,2,3,4,5)
w
class(w)

e<-c(10,20,30,40)
e
class(e)

r<-c("a","b","c","d")
r
class(r)


#factor
gender<-c(0,1,0,1,0,0,1)
gender

Gender<-factor(gender,c(0,1),c("Male,"Female"))
Gender

#list
p<-c(1,2,3)
q<-"green"
r<-21
p
q
r

Data<-list(p,q,r)
Data

class(Data)


#matrix
matrix1<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
matrix1
class(matrix1)

matrix2<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = FALSE)
matrix2
class(matrix2)

#data frame
height<-c(67,89,43,90)
weight<-c(56,34,49,67)

data_set<-data,frame(height,weight)
data_set























