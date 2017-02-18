#ASST 1b

simulateDie <- function(SampleSize = 50){
  #generating the dice values
  dice1<-round(runif(SampleSize,1,6))
  dice2<-round(runif(SampleSize,1,6))
  dice3<-round(runif(SampleSize,1,6))
  dice4<-round(runif(SampleSize,1,6))
  #getting the mean vlaues of the them
  meanOf2 <- rowMeans(data.frame(dice1,dice2))
  
  meanOf4 <- rowMeans(data.frame(dice1,dice2,dice3,dice4))
  #generate histogram of the plot
  hist(meanOf4)
  hist(meanOf2)
}