exp1d <- function(sampleSize= 100,colums = 80){
  data<- data.frame(matrix(rnorm(80,mean = 14,sd = 1.5),ncol =80,nrow = sampleSize )) 
  meansOfAll <- rowMeans(data)
  summary(meansOfAll)
  sd(meansOfAll)
  hist(meansOfAll)
}