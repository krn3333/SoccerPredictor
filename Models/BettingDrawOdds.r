## Karan Chauhan
## Capstone Project

## This code predicts the draw betting odds using the linear regression model

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
attach(FinalDataset)

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Predicting Betting Odds for Draw

DrawOdds <- lm(B365D ~ HTHG+HS+HC+HST+HR+HY+HTAG+AS+AC+AST+AR+AY+B365D+WHD+LBD+SBD+IWD+BWD,data=traindata)
summary(DrawOdds)

newDrawOdds <- data.frame(testdata)

## Make a prediction on the testdata

predictDrawOdds <- predict(DrawOdds, newdata=newDrawOdds)
predictDrawOdds

DrawBettingOdds <- round(predictDrawOdds,digits = 2)
DOdds <- data.frame(testdata, DrawBettingOdds)

## Write the results into a new file

write.csv(DOdds,"DrawBettingOdds.csv",row.names = FALSE)






