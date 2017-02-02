## Karan Chauhan
## Capstone Project

## This code predicts the final results after using the Random Forest Classifier

install.packages("randomForest")
install.packages("party")
FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Import the randomForest library

library(randomForest)

## Apply the random forest classifier to get the result prediction
## 75.32 % accuracy

predictedWinnerRF <- randomForest(FTR~HMRL+AMRL+HomeRF+AwayRF+HST+HC+HY+AS+HS+SBH+B365H+GBA+GBH+BWA+SBA
                                  +BWH+B365A+IWA+LBH+LBA+IWH+BbAvA+BbMxA+BbAvH+BbMxH+BbAvD+BbMxD+BWD+SBD+GBD+
                                    B365D+IWD+WHD+LBD+WHD+IWD+BbMx.2.5.1+BbAv.2.5.1+BbMx.2.5+BbMx.2.5
                                    +BbOU+Bb1X2, data=traindata,
                                     mtry=20,ntree=500)

## Get the tree distribution of 1st tree in random forest

getTree(predictedWinnerRF,1)
predictTree <- predict(predictedWinnerRF,testdata,type = "class")
predictTree

## Generate the Confusion Matrix

table(testdata$FTR,predictTree)

Winner <- predictTree
FinalDataset <- data.frame(testdata, Winner)
Winner

## Plot the sample tree

library("party")
x <- ctree(FTR ~ HMRL+AMRL+HomeRF+AwayRF, data=traindata)
plot(x, type="simple")

write.csv(FinalDataset,"PredictedWinnerRF.csv",row.names = FALSE)



