#asst 2 

encrypt<- function(sampleSize= 1000,keyLength =4){
  #generating the message of the sample 
  Message <- sample(LETTERS,sampleSize,replace = TRUE)
  #generating random keys
  Keys <- floor(runif(sampleSize,0,keyLength))
  #encrytpting the message with keys
  encryptedUnicode <- array()
  for(messageInarray in Message ){
    encryptedUnicode <- c(encryptedUnicode,utf8ToInt(messageInarray))
  }
  encryptedUnicode<-encryptedUnicode[2:length(encryptedUnicode)] + Keys
  encryptedText <- array()
  for(unicode in encryptedUnicode){
    if(unicode>90){
      #if the thresold reaches out of letters cycling back to letters
      unicode <- unicode %%90 +64
    }
    encryptedText <- c(encryptedText,intToUtf8(unicode))
  }
  encryptedText <-encryptedText[2:length(encryptedText)]
  #print(data.frame(Message,Keys,encryptedUnicode,encryptedText))
  for(lett in LETTERS){
    #plotting the prob of mess = a when the given cypher text is a
    plot(table(Message[encryptedText==lett])/sum(table(Message[encryptedText==lett])),main=paste("p(m |",lett,")"),col="green",type = "l",ylab = "probabilities")
    #plotting what is the prob of different letters if the cypher text is given 
    plot(table(encryptedText[Message==lett])/sum(table(encryptedText[Message==lett])),main=paste("p(",lett,")"),col="black",type = "l",ylab = "probabilities")
  }
}