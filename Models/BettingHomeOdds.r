## Karan Chauhan
## Capstone Project

## This code predicts the home team betting odds using the linear regression model

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
attach(FinalDataset)

## Set appropriate seed value

set.seed(1)

## Divide the dataset into training and testing sets 

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Predicting Betting Odds for Home Team

HomeOdds <- lm(B365H ~ HTHG+HS+HC+HST+HR+HY+B365H+WHH+LBH+IWH+BWH+SBH,data=traindata)
summary(HomeOdds)

newHomeOdds <- data.frame(testdata)

## Make a prediction of the model on testdata

predictHomeOdds <- predict(HomeOdds, newdata=newHomeOdds)
predictHomeOdds

HomeBettingOdds <- round(predictHomeOdds,digits = 2)
HOdds <- data.frame(testdata, HomeBettingOdds)

## Write the results in a new file

write.csv(HOdds,"HomeBettingOdds.csv",row.names = FALSE)






