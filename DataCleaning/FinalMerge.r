## Karan Chauhan
## Capstone Project

## This code performs merging all the individual data files to create one final dataset

## Merging all 10 datasets

newfifa = read.csv("newfifa.csv",header = T,na.strings = "?")
newfifa2 = read.csv("newfifa 1-2.csv",header = T,na.strings = "?")
newfifa3 = read.csv("newfifa 3.csv",header = T,na.strings = "?")
newfifa8 = read.csv("newfifa 4-8.csv",header = T,na.strings = "?")
newfifa10 = read.csv("newfifa 9-10.csv",header = T,na.strings = "?")
newfifa11 = read.csv("newfifa 11.csv",header = T,na.strings = "?")
newfifa12 = read.csv("newfifa 12.csv",header = T,na.strings = "?")
newfifa13 = read.csv("newfifa 13.csv",header = T,na.strings = "?")
newfifa14 = read.csv("newfifa 14.csv",header = T,na.strings = "?")
newfifa15 = read.csv("newfifa 15.csv",header = T,na.strings = "?")

dim(newfifa)
dim(newfifa2)
dim(newfifa3)
dim(newfifa8)
dim(newfifa10)
dim(newfifa11)
dim(newfifa12)
dim(newfifa13)
dim(newfifa14)
dim(newfifa15)

FinalDataset <- rbind(newfifa,newfifa2,newfifa3,newfifa8,newfifa10,newfifa11,newfifa12,newfifa13,newfifa14,newfifa15)
dim(FinalDataset)

## Writing the final dataset

write.csv(FinalDataset,"FinalDataset.csv",row.names = FALSE)




