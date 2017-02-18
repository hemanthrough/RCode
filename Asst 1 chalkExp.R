#assignment 1 chalk problem
#1 a
chalkExperiment <- function(sampleSize = 50){
  #generating samples
  numbers <-rnorm(sampleSize)
  #multiply by variance 
  numbers <- numbers*1.5
  #adding the mean 
  chalks <- numbers+14
  print(chalks)
  print("summary without correction")
  print(summary(chalks))
  print(sd(chalks))
  #deviation from expectetd value 
  corrections <- chalks - 14
  #correcting the process
  corrections <- c(0,corrections)
  #removing the last value
  corrections <- corrections[1:length(corrections)-1]
  correctedChalks <- chalks - corrections
  #correctedChalks <- c(0,correctedChalks[1:length(correctedChalks)])
  print("summary  correction")
  print (summary(correctedChalks))
  print("sd ")
  print(sd(correctedChalks))
  plot(chalks,col="green",type ="h")
  lines(correctedChalks,col="red")
  #reference line
  referenceLine <- rep(14,sampleSize)
  lines(referenceLine,col= "blue")
}