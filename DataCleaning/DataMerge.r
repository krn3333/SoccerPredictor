## Karan Chauhan
## Capstone Project

## This code merges the columns with common attributes

## Read the dataset

fifa = read.csv("latest.csv",header = T,na.strings = "?")
fifa

fifa1 = read.csv("latest1.csv",header = T,na.strings = "?")
fifa1

fifa2 = read.csv("latest2.csv",header = T,na.strings = "?")
fifa2

dim(fifa1)
dim(fifa2)

datafile5 <- rbind(fifa1,fifa2)
dim(datafile5)

write.csv(datafile5,"datafile 1-2.csv")

fifa3 = read.csv("latest3.csv",header = T,na.strings = "?")
fifa3

fifa4 = read.csv("latest4.csv",header = T,na.strings = "?")
fifa4

fifa5 = read.csv("latest5.csv",header = T,na.strings = "?")
fifa5

fifa6 = read.csv("latest6.csv",header = T,na.strings = "?")
fifa6

fifa7 = read.csv("latest7.csv",header = T,na.strings = "?")
fifa7

fifa8 = read.csv("latest8.csv",header = T,na.strings = "?")
fifa8

dim(fifa4)
dim(fifa5)
dim(fifa6)
dim(fifa7)
dim(fifa8)

datafile <- rbind(fifa4,fifa5,fifa6,fifa7,fifa8)
dim(datafile)

write.csv(datafile,"datafile.csv")

fifa9 = read.csv("latest9.csv",header = T,na.strings = "?")
fifa9

fifa10 = read.csv("latest10.csv",header = T,na.strings = "?")
fifa10

dim(fifa9)
dim(fifa10)

datafile4 <- rbind(fifa9,fifa10)
dim(datafile4)

write.csv(datafile4,"datafile 9-10.csv")

fifa11 = read.csv("latest11.csv",header = T,na.strings = "?")
fifa11

fifa12 = read.csv("latest12.csv",header = T,na.strings = "?")
fifa12

fifa13= read.csv("latest13.csv",header = T,na.strings = "?")
fifa13
colnames(fifa13)

fifa14 = read.csv("latest14.csv",header = T,na.strings = "?")
fifa14

colnames(fifa14)

fifa14$HHW <- NULL
fifa14$AHW <- NULL
fifa14$Attendance <- NULL
fifa14$HO <- NULL
fifa14$AO <- NULL
fifa14$HBP <- NULL
fifa14$ABP <- NULL

write.csv(fifa14,"new14.csv")

fifa15 = read.csv("latest15.csv",header = T,na.strings = "?")
fifa15

fifa15$HHW <- NULL
fifa15$AHW <- NULL
fifa15$Attendance <- NULL
fifa15$HO <- NULL
fifa15$AO <- NULL
fifa15$HBP <- NULL
fifa15$ABP <- NULL

write.csv(fifa15,"new15.csv")












