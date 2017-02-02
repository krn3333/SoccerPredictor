## Karan Chauhan
## Capstone Project

## This code converts the scores into categorical values on a scale of  0-5

## Read the datasets

HomeScores = read.csv("HomeScores.csv",header = T,na.strings = "?")
AwayScores = read.csv("AwayScores.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

## Convert the scores into categorical values

FinalDataset$HomeRF <- ifelse(FTHG==0, "1",
                              ifelse(FTHG==1, "1",
                                     ifelse(FTHG==2, "2",
                                            ifelse(FTHG==3, "2",
                                                   ifelse(FTHG==4, "3",
                                                          ifelse(FTHG==5, "3",
                                                                 ifelse(FTHG==6, "4",        
                                                                        ifelse(FTHG==7, "4",
                                                                               ifelse(FTHG==8, "5",
                                                                                      ifelse(FTHG==9, "5", 
                                                                                             NA
                                                                                      ))))))))))