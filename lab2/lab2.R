getwd()
setwd("D:\\R wokings\\lab2")

x < -4
x

if(x>0){
  print("Positive Number")
}

#if-else
x<-7
y<--2
x
y

if(y>0){
  print("Positive Number")
}
else{
    print("Negative Number")

}

#nested if else

x<-0
x
if(x>0){
  print("Positive Number")
}
else if{
  print("Negative Number")
  
}else{
  print("Equal to 0")
  
}

#while loop
i<-1
i

while(i<6){
  print(i)
  i=i+1
}


#for loop
6:10

#7,8,9

for(i in 7 :9){
  print(i)
}


#read csv file
data2<-read.csv("Data 2.csv")
data2
fix("data2")

#read text file
data1<-read.table("data2.txt",header =TRUE,sep =",")
data1
fix("data1")

#write data to a file 
index<-c(1,2,3)
name<-c("Nimal","Kamal","Sunil")
marks<-c(25,35,45)

dataFrame<-data.frame(index,name,marks)
dataFrame

#write data to a csv file
write.csv(dataFrame,"dataframe1.csv")

write.table(dataFrame,"dataframe2.txt")



########  Function ##########

#create function

function1 <- function (a,b){
  y<-a+b
  print(y)
  
}

#calling the function

function1(9,9)


#############################################

#create function

function2 <- function (a,b){
  c<-a*b
  print(c)
  
}

#calling the function

function2(9,9)


#q01
quadRoots<-function(a,b,c){
  
  x1 = (-b+sqrt(b^2-4*a*c))/2a
  
  x2 = (-b-sqrt(b^2-4*a*c))/2a
  
  print(x1)
  print(x2)
  
}


#calling the function
quadRoots(2,3,1)



#Q04
#1:k
#k=20

vec1<-c(1:20)#3,6,9,12,15,18
sum(vec1%%3==0)


#Q06


data3<-c(24,67,45,23)
max<-0
maxIndex<-0

for(i in 1:length(data3)){
  if(max<data3[i]){
    max<-data3[i]
    maxIndex<-i
  }
}

maxIndex
max



#Q08
moneyOwned<-function(P,R,n){
  for(i in 1:n){
    A = P*((1+R/100))^i
    print(A)
  }
}

moneyOwned(5000,11.5,15)





























