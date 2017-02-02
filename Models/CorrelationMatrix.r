## Karan Chauhan
## Capstone Project

## This code genrates correlation plots between various variables to test the relationship
## between them

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

pairs(FTHG ~ B365A+B365D+B365H,data=FinalDataset)

## This shows the effect of betting points in home team goals. As we can see from the plot of FTHG vs B365H, as 
## home goals increase when home betting points are less and vice versa.

## Same is true for FTAG

pairs(FTAG ~ B365A+B365D+B365H,data=FinalDataset)

## In this case, we consider B365A

pairs(FTR ~ HomeRF + AwayRF)

## When HomeRF is 4 or 5, then FTR=H 
## When AwayRF is 4, then FTR=A
## Neutral for draw. ( H is 3,2 is D, 1 is A)



