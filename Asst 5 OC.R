SSimple = 29.52
plotOC <- function(sampleSize= 8){
  muCritical= qt(.95,2*(sampleSize-1)) * SSimple *sqrt(2)/sqrt(sampleSize)
  pts <- seq(-10,55,by = .1)
  delta <-  muCritical - pts
  deltaOverSigma <- (delta / SSimple ) * sqrt(sampleSize)/sqrt(2)
  betaValues <- pt(deltaOverSigma,2*(sampleSize-1))
  print(betaValues)
  par(new=TRUE)
  plot(pts,betaValues,col= round(runif(1,1,24)))
}