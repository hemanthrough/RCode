data <- c(108.326,108.326,108.326,108.326,75.196,75.196,75.196,75.196,96.341,96.341,96.341)
sortedDAta <- sort(data)
ranks <- seq(1,length(data),by=1)
fRanks <- (ranks-.3)/(length(data)+.4)
#ln of sorted data
lnSortedDAta<-log(sortedDAta)
lnLnofTime <- log(-log(1-fRanks))
#you are doing lny(ranks)~lnx(data)
#but when you do lnx~lny u get the output as in excel
lmData<-lm(lnSortedDAta~lnLnofTime)
summary(lmData)

plot(lnSortedDAta~lnLnofTime)
lines(lmData$fitted.values~lnLnofTime,col="red")
beta = 1/lmData$coefficients[2]
#beta value
beta
etta = exp(lmData$coefficients[1])
#eta value
etta
#for plotting weibul graph
time <- seq(10,100,by=10)
weibullPlot <- 1-exp(-(time/etta)^beta)
weibullPlot

plot(time,weibullPlot,type = "l")