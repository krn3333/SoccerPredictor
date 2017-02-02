## Karan Chauhan
## Capstone Project

## This code predicts the results on the testdata using multinomial logistic regression
## by using different feature sets and computes the confusion matrix

## Read the dataset

install.packages("nnet")
FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

# Factor the target varaible

FinalDataset$xx <- factor(FinalDataset$FTR)

## Import the nnet library

library(nnet)

## Multinomial Regression using Feature Set 1
## 78.81 % accuracy with Feature Set 1

predictWinner<-multinom(FTR~ HMRL+AMRL+HomeRF+AwayRF+HTR+HTAG+HTHG+HST+HC+HY+AS+HS+SBH+B365H+GBA+GBH+BWA+SBA
                        +BWH+B365A+IWA+LBH+LBA+IWH+BbAvA+BbMxA+BbAvH+BbMxH+BbAvD+BbMxD+BWD+SBD+GBD+
                       B365D+IWD+WHD+LBD+WHD+IWD, data=traindata)

## Multinomial Regression using Feature Set 1
## 78.94 % accuracy with Feature Set 2

## predictWinner<-multinom(FTR~HomeRF+AwayRF+HTR+HTAG+HTHG+HST+AST+SBH+B365H+GBA+GBH+BWA+SBA+BWH+B365A+IWA+LBH+LBA
##           +IWH+WHA+BbAvA+WHH+BWD+SBD+GBD+AS+B365D+
##              IWD+WHD+LBD+BbMx.2.5.1+BbAv.2.5.1+BbMx.2.5+BbMx.2.5, data=traindata)

## Multinomial Regression using only Betting points attributes
## Only 53 % accuracy using betting points data only which shows that only betting points can't be used
## In confusion matrix, draw is zero 

## predictWinner<-multinom(FTR~SBH+B365H+GBA+GBH+BWA+SBA+BWH+B365A+IWA+LBH+LBA
##                  +IWH+WHA+BbAvA+WHH+BbMxA+BbAvH+BbMxH+BbAvD+BbMxD+BWD+SBD+GBD+B365D+
##                     IWD+WHD+LBD+BbMx.2.5.1+BbAv.2.5.1+BbMx.2.5+BbMx.2.5, data=traindata)

summary(predictWinner)

## Predict the classes using testdata

predictClass <- predict(predictWinner,testdata)
predictClass
plot(predictClass,xlab="Classes", ylab="Number of Instances")

## Print the confusion matrix

table(testdata$FTR,predictClass)

## Create the dataframe and write the results

Winner <- predictClass
FinalDataset <- data.frame(testdata, Winner)
Winner

write.csv(FinalDataset,"PredictedWinnerMR.csv",row.names = FALSE)


