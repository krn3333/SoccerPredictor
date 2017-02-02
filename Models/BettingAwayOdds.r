## Karan Chauhan
## Capstone Project

## This code predicts the away team betting odds using the linear regression model

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
attach(FinalDataset)

## Set appropriate seed value

set.seed(1)

## Divide the dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Predicting Betting Odds for Away Team

AwayOdds <- lm(B365A ~ HTAG+AS+AC+AST+AR+AY+B365A+WHA+LBA+IWA+BWA+SBA,data=traindata)
summary(AwayOdds)

newAwayOdds <- data.frame(testdata)

## Make a prediction of the model on testdata

predictAwayOdds <- predict(AwayOdds, newdata=newAwayOdds)
predictAwayOdds

AwayBettingOdds <- round(predictAwayOdds,digits=2)
AOdds <- data.frame(testdata, AwayBettingOdds)

## Write the results in a new file

write.csv(AOdds,"AwayBettingOdds.csv",row.names = FALSE)






