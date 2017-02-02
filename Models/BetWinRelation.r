Current = read.csv("Current.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

plot(Current$Home.Odds,Current$Home.Score,main = "Home Score vs Home Odds",xlab = "Home Odds",ylab = "Home Score")
plot(Current$Away.Odds,Current$Away.Score,main = "Away Score vs Away Odds",xlab = "Away Odds",ylab = "Away Score")

