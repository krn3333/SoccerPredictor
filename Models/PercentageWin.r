## Karan Chauhan
## Capstone Project

## This code calculates the win percentages of home and away teams using the Poisson Model

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
attach(FinalDataset)

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

train <- (FinalDataset$Number>1520)
traindata <- FinalDataset[train, ]
testdata <- FinalDataset[!train, ]

## Restructuring the data

library(nnet)
FinalDataset <- apply(FinalDataset,1,function(row){
   
   data.frame(team=c(row['HomeTeam'],row['AwayTeam']),
              opponent=c(row['AwayTeam'],row['HomeTeam']),
              goals=c(row['FTHG'],row['FTAG']),
              home=c(1,0))
})

FinalDataset <- do.call(rbind,FinalDataset)
head(FinalDataset)

## Applying linear regression model

BettingRes <- lm(goals~home+team+opponent,data=FinalDataset)
summary(BettingRes)

## Predicting Win % of Home Team

predResH <- predict(BettingRes,data.frame(home=1,team='Chelsea',opponent='Everton',type="response"))
predResH

## Predicting Win % of Away Team

predResA <- predict(BettingRes,data.frame(home=0,team='Everton',opponent='Chelsea',type="response"))
predResA

## Applying the Poisson Model

HomeStats <- dpois(0:8,predResH)
AwayStats <- dpois(0:8,predResA)

poisRes <- HomeStats %o% AwayStats
rownames(poisRes) <- 0:8
colnames(poisRes) <- 0:8
print(poisRes)

## Obtaining the diagonal values

draw <- sum(diag(poisRes))
away <- sum(poisRes[upper.tri(poisRes)])
home <- sum(poisRes[lower.tri(poisRes)])

## Printing out the results

per1 <- cat('Chances of Home Team Winning :',round((home * 100 + 0.50),digits=2),'%') 
per2 <- cat('Chances of Away Team Winning :',round((away * 100),digits = 2),'%')
per3 <- cat('Chances of Draw :',round((draw * 100),digits = 2),'%')

