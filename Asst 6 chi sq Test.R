mean = 3.5
sd = .85
chiSqiTestNorm<-function(sampleSize){
  dice1 <- round(runif(sampleSize,1,6))#rnorm gives high value
  dice2 <-round(runif(sampleSize,1,6))
  dice3 <-round(runif(sampleSize,1,6))
  dice4 <-round(runif(sampleSize,1,6))
  #calculating mean of 4 dices
  meanof4Dice <- rowMeans(data.frame(dice1,dice2,dice3,dice4))
  #no of bins is equal to sqrt n
  bins <- seq(1,6,by = (6/sqrt(sampleSize)))
  expectedProb = array()
  #expected distribution 
  for( num in bins){
    numUp <- num - mean
    den <- sd
    numLow <- num - mean-(6/sqrt(sampleSize))
    expectedProb<- c(expectedProb,pnorm(numUp/den)-pnorm(numLow/den))
  }
  #removing the first
  expectedProb<- expectedProb[2:length(expectedProb)]
  print("Expected Prob ")
  print( expectedProb)
  expectedFreq <- expectedProb*sampleSize
  print("Expected freq ")
  print( expectedFreq)
  #obsevred freq
  observedFreq = array()
  for( num in bins){
    numUp <- num
    numLow <- num -(6/sqrt(sampleSize))
    observedFreq<- c(observedFreq,NROW(meanof4Dice[meanof4Dice >= numLow& meanof4Dice <= numUp]))
  }
  observedFreq<- observedFreq[2:length(observedFreq)]
  print("obsevred freq ")
  print( observedFreq)
  calculatedChi <- (observedFreq -expectedFreq)^2/expectedFreq
  print("calculated chi score")
  print(calculatedChi)
  print("chi delta ")
  print(sum(calculatedChi))
  NROW(bins)-1
  qchisq(p=.95,df = NROW(bins)-1)
  
  #6b 
  #confidence interval is given by (n-1)s^2/chi
  
}
