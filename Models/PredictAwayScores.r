## Karan Chauhan
## Capstone Project

## This code predicts the away team scores using linear regression model

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
attach(FinalDataset)

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Predicting full time scores of Away Team using linear regression
## 72 % accuracy - 1096 instances match

lmResAway <- lm(FTAG ~ AwayRF+AMRL+HTAG+AS+AC+AST+AR+AY+B365A+WHA+LBA+IWA+SBA+BWA+GBA,data=traindata)
summary(lmResAway)

newScoresAway <- data.frame(testdata)

## Predicting the scores using testdata

finalScoresAway <- predict(lmResAway, newdata=newScoresAway)
finalScoresAway

## Writing the results 

AwayScore <- round(finalScoresAway,digits=0)
ScoreDataAway <- data.frame(testdata, AwayScore)
AwayScore

write.csv(ScoreDataAway,"AwayScores.csv",row.names = FALSE)





