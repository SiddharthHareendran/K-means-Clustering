kmeans.wss <-function(data,maxclusters=10){
  wss<-rep(NA,10)
  for(i in 1:maxclusters){
    model<-kmeans(data,centers = i,nstart = 10)
    wss[i] <- model$tot.withinss
  }
  return(wss)
}