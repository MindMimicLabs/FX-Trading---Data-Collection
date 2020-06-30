if (!require("TFX")) {
  install.packages("TFX")
  library(TFX)
}
getwd()
setwd("./data/") 
data = data.frame(QueryTrueFX())
for(i in c(1:((60*24)*30))) {
Sys.sleep(60)
data = rbind(data, data.frame(QueryTrueFX()))
data = subset(data, data$Symbol == "EUR/USD")
write.csv(data, 'data.csv')
}

