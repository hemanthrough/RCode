SSimple = 29.52
plotOC <- function(sampleSize= 8,resolution =71){
  muCritical= qt(.95,2*(sampleSize-1)) * SSimple *sqrt(2)/sqrt(sampleSize)
  pts <- seq(-10,55,by = .1)
  delta <-  muCritical - pts
  deltaOverSigma <- (delta / SSimple ) * sqrt(sampleSize)/sqrt(2)
  betaValues <- pt(deltaOverSigma,2*(sampleSize-1))
  print(betaValues)
  par(new=TRUE)
  plot(pts,betaValues,col= round(runif(1,1,24)))
  
  #code to find expected n
  #alpha+bta
  n <- (qt(.5,2*(sampleSize-1))+qt(.95,2*(sampleSize-1)))^2 * SSimple^2 *2/resolution^2
  paste("n required with  50", n)
  
  n <- (qt(.1,2*(sampleSize-1))+qt(.05,2*(sampleSize-1)))^2 * SSimple^2 *2/resolution^2
  paste("n required with  10", n)
  
}