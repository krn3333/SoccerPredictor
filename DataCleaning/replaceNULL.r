## Karan Chauhan
## Capstone Project

## This code performs missing values imputation by replacing the missing values with mean values

## Read the dataset

newfifa2 = read.csv("newfifa 1-2.csv",header = T,na.strings = "?")

newfifa2$IWH[which(is.na(newfifa2$IWH))] <- rowMeans(newfifa2[,c("WHH","BWH")], na.rm=TRUE)
newfifa2$IWD[which(is.na(newfifa2$IWD))] <- rowMeans(newfifa2[,c("WHD","BWD")], na.rm=TRUE)
newfifa2$IWA[which(is.na(newfifa2$IWA))] <- rowMeans(newfifa2[,c("WHA","BWA")], na.rm=TRUE)

write.csv(newfifa2,"newfifa 1-2.csv")

apply(is.na(newfifa2), 2, any)
colnames(newfifa2)[apply(is.na(newfifa2), 2, any)]

## Replacing null values in fifa3

newfifa3 = read.csv("newfifa 3.csv",header = T,na.strings = "?")

newfifa3$GBH[which(is.na(newfifa3$GBH))] <- rowMeans(newfifa3[,c("WHH","BWH")], na.rm=TRUE)
newfifa3$GBD[which(is.na(newfifa3$LBD))] <- rowMeans(newfifa3[,c("WHD","BWD")], na.rm=TRUE)
newfifa3$GBA[which(is.na(newfifa3$LBA))] <- rowMeans(newfifa3[,c("WHA","BWA")], na.rm=TRUE)
newfifa3$LBH[which(is.na(newfifa3$LBH))] <- rowMeans(newfifa3[,c("WHH","BWH")], na.rm=TRUE)
newfifa3$LBD[which(is.na(newfifa3$LBD))] <- rowMeans(newfifa3[,c("WHD","BWD")], na.rm=TRUE)
newfifa3$LBA[which(is.na(newfifa3$LBA))] <- rowMeans(newfifa3[,c("WHA","BWA")], na.rm=TRUE)

write.csv(newfifa3,"newfifa 3.csv")

apply(is.na(newfifa3), 2, any)
colnames(newfifa3)[apply(is.na(newfifa3), 2, any)]

## Replacing null values in fifa 8

newfifa8 = read.csv("newfifa 4-8.csv",header = T,na.strings = "?")

newfifa8$IWH[which(is.na(newfifa8$IWH))] <- rowMeans(newfifa8[,c("LBH","BWH")])
newfifa8$IWD[which(is.na(newfifa8$IWD))] <- rowMeans(newfifa8[,c("LBD","BWD")])
newfifa8$IWA[which(is.na(newfifa8$IWA))] <- rowMeans(newfifa8[,c("LBA","BWA")])
newfifa8$WHH[which(is.na(newfifa8$WHH))] <- rowMeans(newfifa8[,c("LBH","BWH")])
newfifa8$WHD[which(is.na(newfifa8$WHD))] <- rowMeans(newfifa8[,c("LBD","BWD")])
newfifa8$WHA[which(is.na(newfifa8$WHA))] <- rowMeans(newfifa8[,c("LBA","BWA")])

write.csv(newfifa8,"newfifa 4-8.csv")

## Replacing null values in fifa15

newfifa15 = read.csv("newfifa 15.csv",header = T,na.strings = "?")

newfifa15$LBH[which(is.na(newfifa15$LBH))] <- rowMeans(newfifa15[,c("IWH","SBH")], na.rm=TRUE)
newfifa15$LBD[which(is.na(newfifa15$LBD))] <- rowMeans(newfifa15[,c("IWD","SBD")], na.rm=TRUE)
newfifa15$LBA[which(is.na(newfifa15$LBA))] <- rowMeans(newfifa15[,c("IWA","SBA")], na.rm=TRUE)

write.csv(newfifa15,"newfifa 15.csv")

apply(is.na(newfifa15), 2, any)
colnames(newfifa15)[apply(is.na(newfifa15), 2, any)]

## Replacing null values in FinalDataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")

FinalDataset$IWH[which(is.na(FinalDataset$IWH))] <- rowMeans(FinalDataset[,c("BWH","SBH")], na.rm=TRUE)
FinalDataset$IWD[which(is.na(FinalDataset$IWD))] <- rowMeans(FinalDataset[,c("BWD","SBD")], na.rm=TRUE)
FinalDataset$IWA[which(is.na(FinalDataset$IWA))] <- rowMeans(FinalDataset[,c("BWA","SBA")], na.rm=TRUE)

FinalDataset$WHH[which(is.na(FinalDataset$WHH))] <- rowMeans(FinalDataset[,c("B365H","SBH")], na.rm=TRUE)
FinalDataset$WHD[which(is.na(FinalDataset$WHD))] <- rowMeans(FinalDataset[,c("B365D","SBD")], na.rm=TRUE)
FinalDataset$WHA[which(is.na(FinalDataset$WHA))] <- rowMeans(FinalDataset[,c("B365A","SBA")], na.rm=TRUE)

write.csv(FinalDataset,"FinalDataset.csv",row.names = FALSE)

apply(is.na(FinalDataset), 2, any)
colnames(FinalDataset)[apply(is.na(FinalDataset), 2, any)]
