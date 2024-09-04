age<-c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33,
33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
#To Find Mean Median Mode Value
mean<-mean(age)
median_value<-median(age)
mode_value<-mode(age)
#To Find Mid Range Value
mid_value<-(min(age)-max(age))
print("The Mid Range Value is : ")
mid_value
#To Find 1st and 2nd Value
print("The Value of 1st and 2nd Quartitle")
a<-quantile(age,0.25)
a
b<-quantile(age,0.75)
b


