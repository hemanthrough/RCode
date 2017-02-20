

#ss14

drawPlot<-function(dataToPlot)
{
  par(new = TRUE)
  plot(pts,dataToPlot,ylab = "probs")
}
#task 1
#1 a data generation 
data <- rnorm(50,257,20)
#1b
#calculating the mean of the data
print("mean ")
meanOfSample =mean(data)
print(meanOfSample) #257.4398
#calculating the sd of the data
print("sd ")
sdOfSample = sd(data) #19.3157
print(sdOfSample)
#1c
lsl = 220 #given
#cpk= mean-lsl/3 sigma
cpk =( meanOfSample - lsl)/(3 *sdOfSample) #.6461
print("cpk")
print(cpk)

#1 d
newMean = 220+ (3*sdOfSample)
print(newMean) # should be less than 280

#2 a plz check if am correct
#plot on the same plot
drawPlot<-function(dataToPlot)
{
  par(new = TRUE)
  plot(pts,dataToPlot,ylab = "probs")
}
pts<- seq(1,100,by = .5)
CummulativeProbs6 <- pchisq(pts,df = 6)
CummulativeProbs12 <- pchisq(pts,df = 12)
CummulativeProbs18 <- pchisq(pts,df = 18)
drawPlot(CummulativeProbs6)
drawPlot(CummulativeProbs12)
drawPlot(CummulativeProbs18)
par(new = FALSE)

#2 b

Xchi = 12*2
pchisq(Xchi,12,lower.tail = FALSE)


#3 a
data <- data.frame(rnorm(20,12,3),rnorm(20,18,2.5))
print(data)

mean1 = mean(data[,1])#11.34345
print("mean sampl 1 ")
print(mean1)
mean2 = mean(data[,2])#17.89887
print("mean sampl 1 ")
print(mean2)

SD1 = sd(data[,1])
print("SD sampl 1 ")
print(SD1)#2.7505
SD2 = sd(data[,2])
print("SD sampl 2 ")
print(SD2)#2.291668
#scomm = .80138 (sqrt((sd^2 + sd^2)/2)*sqrt(20/2))
#diff = -6.55542
#tvalue = -8.1892
t.test(data[,1],data[,2],conf.level = .9,var.equal = TRUE)#tcrit = -1.685 reject h0
t.test(data[,1],data[,2],conf.level = .95,var.equal = TRUE)#tcrit = -2.024394 reject h0
t.test(data[,1],data[,2],conf.level = .99,var.equal = TRUE)#tcrit = -2.711558 reject h0

#fstat = 1.2002
var.test(data[,1],data[,2],conf.level = .9) #fcrit(.95,19,19) = 2.168 #acce h0
var.test(data[,1],data[,2],conf.level = .95) #fcrit(.9725,19,19) = 2.47626 #acce h0
var.test(data[,1],data[,2],conf.level = .99) #fcrit(.995,19,19) = 3.43175 #acce 




##LINK FOR THE LAST QUESTION

#  https://1drv.ms/x/s!AsCHODUv6eYGgQ10FbGfXGkTk1Up