M1<- c(201,138,132,117,177,168,178,104)
M2<- c(127,82,105,63,79,60,57,72)

meanOfM1 = mean(M1)
paste('mean of m1 ', meanOfM1)
meanOfM2 = mean(M2)
paste('mean of m2 ', meanOfM2)
differenceOfMean = meanOfM1- meanOfM2
paste('difference of mean  ', differenceOfMean)
varOfM1 <- var(M1)
paste('variance of m1 ', meanOfM1)
varOfM2 <- var(M2)
paste('variance of m1 ', meanOfM1)
commonVariance = mean(c(varOfM1,varOfM2))
commonSD = sqrt(commonVariance)

tStat = differenceOfMean*sqrt(length(M1))/(commonSD*sqrt(2))
print(tStat)
#the calculated value should be less than .95 df = 16-2
t.test(M1,M2,var.equal = TRUE,alternative = "g")