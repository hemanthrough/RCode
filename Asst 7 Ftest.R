sam60 <-  c(201,138,132,117,177,168,178,104)
sam80 <- c(127,60,79,63,105,82,57,72)

print("variance of sample 60")
var60<-var(sam60)
print("var of sample 60 ")
print(var60)

print("variance of sample 80")
var80<-var(sam80)
print("var of sample 80 ")
print(var80)

fRatio <- var60/var80

print("fratio ")
print(fRatio)
print("5%")
print(qf(.975,7,7))

print("1%")
print(qf(.995,7,7))

print(".5%")
print(qf(.9975,7,7))

var.test(sam60,sam80)
