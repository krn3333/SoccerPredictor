## Karan Chauhan
## Capstone Project

## This code predicts the Home team scores using linear regression

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
attach(FinalDataset)

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Predicting full time scores of Home Team using linear regression

lmResHome <- lm(FTHG ~ HomeRF+HMRL+HTHG+HS+HC+HST+HR+HY+B365H+WHH+LBH+IWH+BWH+SBH+GBH,data=traindata)
summary(lmResHome)

newScores <- data.frame(testdata)

## Predict the scores using testdata

HomeScores <- predict(lmResHome, newdata=newScores)
HomeScores

## Writing the results 

HomeScore <- round(HomeScores,digits = 0)
ScoreData <- data.frame(testdata, HomeScore)
HomeScore

write.csv(ScoreData,"HomeScores.csv",row.names = FALSE)






