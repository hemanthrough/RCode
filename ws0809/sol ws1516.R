#exam 1516
#1
#creating dataframe as in question
#1 a
data<- data.frame(rnorm(60,20,.8),rnorm(60,18,.5))
print("data ")
View(data)
#1b
print("mean")
print(lapply(data,mean))
print("standard deviation")
print(lapply(data,sd))
#1 c
t.test(data[,1],data[,2],var.equal = TRUE,conf.level = .99)
#1d 

# if pvalue is less than the significance level then we say that the test is significant
#



#task 3
data<- data.frame(rnorm(20,12,3),rnorm(20,18,2.5))
View(data)

lapply(data,var)

var.test(data[,1],data[,2],conf.level = .9)
var.test(data[,1],data[,2],conf.level = .95)
var.test(data[,1],data[,2],conf.level = .99)
