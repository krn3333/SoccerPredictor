## Karan Chauhan
## Capstone Project

## This code determines the important attributes after performing feature selection 
## using the Boruta package

## Import the required packages

install.packages("Boruta")
install.packages("caret")
library(Boruta)

## Read the dataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")
auto = na.omit(auto)
attach(auto)

## Set appropriate seed

set.seed(1)

## Divide the Dataset into training and testing sets

splitdata <- sample(2,nrow(FinalDataset),replace=TRUE,prob = c(0.8,0.2))
traindata <- FinalDataset[splitdata==1,]
testdata <- FinalDataset[splitdata==2,]

## Applying the boruta feature selection technique

borutaRes <- Boruta(FTR~., data = traindata, doTrace = 2)
print(borutaRes)
colnames(borutaRes)

## Plotting the important variables using boruta package
## Features will be displayed in the order of importance

plot(borutaRes, xlab = "", xaxt = "n")
borutares<-lapply(1:ncol(borutaRes$ImpHistory),function(i)
borutaRes$ImpHistory[is.finite(borutaRes$ImpHistory[,i]),i])
names(borutares) <- colnames(borutaRes$ImpHistory)
bREs <- sort(sapply(borutares,median))
axis(side = 1,las=2,labels = names(bREs),
       at = 1:ncol(borutaRes$ImpHistory), cex.axis = 0.7)








