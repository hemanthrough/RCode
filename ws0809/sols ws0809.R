#1 we use normal distribution when the sample size is more than 20 and standard deviation 
# the sample is known 
# other wise we use the t distribution


#2 a pnorm of the value gives the prob of distr below the particular value
prob <- pnorm(10,mean = 16,sd = 2.5)
print("2 a) prob below 10 is ")
print(prob)

#2 b we calulate the chi sq pt by formulae (n-1) s^2/expected^2
chiStat <- 17* 9/6.25
prob <-pchisq(chiStat,17,lower.tail = FALSE)
print("2 b) prob is ")
print(prob)

#2 c we calculate the CI using the t value alpha = .05 for 2 sided its .025
#ci = mean +or- sigma * qt(.025,19)/sqrt(20)
up = 16 + (qt(.975,19)*2.5/sqrt(20))
low = 16 - (qt(.975,19)*2.5/sqrt(20))

print("CI = ")

print(up)

print(low)

#2 d prognosis interval is given by mean + or - qt * sigma sqt(1 + 1/n)

prog_up = 16 + (qt(.975,19)*2.5*sqrt(1+(1/20)))
prog_lower = 16 - (qt(.975,19)*2.5*sqrt(1+(1/20)))

#2 e) Cpk = max - min / 6 sigma 
cpk<- 20-10/(6 * 2.5)

print("cpk ")
print(cpk)

requiredSigma <- 20-10/(6)
improvementRequired <- 2.5- requiredSigma

print("required sigma =")
print(improvementRequired)

#2 e) same as above as but in this case we assume the mean to be in center 


#4 a
numbers<- rnorm(80)
sqNum <- numbers^2
expNum <- exp(numbers)

print("nomal numbers")
print(summary(numbers))
print(sd(numbers))
#use excel to know skew
boxplot(numbers)

print("nomal numbers")
print(summary(sqNum))
print(sd(sqNum))
#use excel to know skew
boxplot(sqNum)

print("nomal numbers")
print(summary(expNum))
print(sd(expNum))
#use excel to know skew
boxplot(expNum)
