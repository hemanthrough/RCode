expEXperiment <- function(sampleSize=100){
  numbers <- runif(sampleSize)
  expNum <- exp(numbers)
  print(summary(expNum))
  boxplot(expNum)
}