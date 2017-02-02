## Karan Chauhan
## Capstone Project

## This code eliminates all the attribues that are not needed

## Read the dataset

## Removing unwanted columns from fifa

newfifa = read.csv("latest.csv",header = T,na.strings = "?")
newfifa$Attendance <- NULL
newfifa$PSH <- NULL
newfifa$PSA <- NULL
newfifa$PSD <- NULL
newfifa$VCH <- NULL
newfifa$VCA <- NULL
newfifa$VCD <- NULL 
newfifa$PSCH <- NULL
newfifa$PSCD <- NULL
newfifa$PSCA <- NULL

newfifa$BbAH <- NULL
newfifa$BbAHh <- NULL
newfifa$BbMxAHH <- NULL
newfifa$BbAvAHH <- NULL
newfifa$BbMxAHA <- NULL
newfifa$BbAvAHA <- NULL

write.csv(newfifa,"newfifa.csv")

## Removing unwanted columns from fifa 1-2

newfifa2 = read.csv("datafile 1-2.csv",header = T,na.strings = "?")
newfifa2$Attendance <- NULL
newfifa2$PSH <- NULL
newfifa2$PSA <- NULL
newfifa2$PSD <- NULL
newfifa2$VCH <- NULL
newfifa2$VCA <- NULL
newfifa2$VCD <- NULL 
newfifa2$PSCH <- NULL
newfifa2$PSCD <- NULL
newfifa2$PSCA <- NULL
newfifa2$SJH <- NULL
newfifa2$SJD <- NULL
newfifa2$SJA <- NULL

newfifa2$BbAH <- NULL
newfifa2$BbAHh <- NULL
newfifa2$BbMxAHH <- NULL
newfifa2$BbAvAHH <- NULL
newfifa2$BbMxAHA <- NULL
newfifa2$BbAvAHA <- NULL

write.csv(newfifa2,"newfifa 1-2.csv")

## Removing unwanted columns from fifa 3

newfifa3 = read.csv("latest3.csv",header = T,na.strings = "?")
newfifa3$Attendance <- NULL
newfifa3$PSH <- NULL
newfifa3$PSA <- NULL
newfifa3$PSD <- NULL
newfifa3$VCH <- NULL
newfifa3$VCA <- NULL
newfifa3$VCD <- NULL
newfifa3$PSCH <- NULL
newfifa3$PSCD <- NULL
newfifa3$PSCA <- NULL
newfifa3$SJH <- NULL
newfifa3$SJD <- NULL
newfifa3$SJA <- NULL
newfifa3$BSH <- NULL
newfifa3$BSD <- NULL
newfifa3$BSA <- NULL

newfifa3$BbAH <- NULL
newfifa3$BbAHh <- NULL
newfifa3$BbMxAHH <- NULL
newfifa3$BbAvAHH <- NULL
newfifa3$BbMxAHA <- NULL
newfifa3$BbAvAHA <- NULL

write.csv(newfifa3,"newfifa 3.csv")

## Removing unwanted columns from fifa 4-8

newfifa8 = read.csv("datafile.csv",header = T,na.strings = "?")
newfifa8$Attendance <- NULL

newfifa8$VCH <- NULL
newfifa8$VCA <- NULL
newfifa8$VCD <- NULL 
newfifa8$BSH <- NULL
newfifa8$BSD <- NULL
newfifa8$BSA <- NULL
newfifa8$SJH <- NULL
newfifa8$SJD <- NULL
newfifa8$SJA <- NULL

newfifa8$BbAH <- NULL
newfifa8$BbAHh <- NULL
newfifa8$BbMxAHH <- NULL
newfifa8$BbAvAHH <- NULL
newfifa8$BbMxAHA <- NULL
newfifa8$BbAvAHA <- NULL

write.csv(newfifa8,"newfifa 4-8.csv")

## Removing unwanted columns from fifa 9-10

newfifa10 = read.csv("datafile 9-10.csv",header = T,na.strings = "?")
newfifa8$Attendance <- NULL

newfifa10$VCH <- NULL
newfifa10$VCA <- NULL
newfifa10$VCD <- NULL 
newfifa10$SJH <- NULL
newfifa10$SJD <- NULL
newfifa10$SJA <- NULL

newfifa10$BbAH <- NULL
newfifa10$BbAHh <- NULL
newfifa10$BbMxAHH <- NULL
newfifa10$BbAvAHH <- NULL
newfifa10$BbMxAHA <- NULL
newfifa10$BbAvAHA <- NULL

write.csv(newfifa10,"newfifa 9-10.csv")

## Removing unwanted columns from fifa 11 

newfifa11 = read.csv("latest11.csv",header = T,na.strings = "?")
newfifa11$Attendance <- NULL

newfifa11$GB.2.5 <- NULL
newfifa11$GB.2.5.1 <- NULL
newfifa11$B365.2.5 <- NULL 
newfifa11$B365.2.5.1 <- NULL
newfifa11$GBAHH <- NULL
newfifa11$GBAHA <- NULL
newfifa11$GBAH <- NULL
newfifa11$LBAHH <- NULL
newfifa11$LBAHA <- NULL
newfifa11$LBAH <- NULL
newfifa11$B365AHH <- NULL
newfifa11$B365AHA <- NULL
newfifa11$B365AH <- NULL

write.csv(newfifa11,"newfifa 11.csv")

## Removing unwanted columns from fifa 12

newfifa12 = read.csv("latest12.csv",header = T,na.strings = "?")
newfifa12$Attendance <- NULL

newfifa12$GB.2.5 <- NULL
newfifa12$GB.2.5.1 <- NULL
newfifa12$B365.2.5 <- NULL 
newfifa12$B365.2.5.1 <- NULL
newfifa12$GBAHH <- NULL
newfifa12$GBAHA <- NULL
newfifa12$GBAH <- NULL
newfifa12$LBAHH <- NULL
newfifa12$LBAHA <- NULL
newfifa12$LBAH <- NULL
newfifa12$B365AHH <- NULL
newfifa12$B365AHA <- NULL
newfifa12$B365AH <- NULL
newfifa12$SOH <- NULL
newfifa12$SOD <- NULL
newfifa12$SOA <- NULL

write.csv(newfifa12,"newfifa 12.csv")

## Removing unwanted columns from fifa 13

newfifa13 = read.csv("latest13.csv",header = T,na.strings = "?")
newfifa13$Attendance <- NULL
newfifa13$SOH <- NULL
newfifa13$SOD <- NULL
newfifa13$SOA <- NULL

write.csv(newfifa13,"newfifa 13.csv")

## Removing unwanted columns from fifa 14

newfifa14 = read.csv("latest14.csv",header = T,na.strings = "?")
newfifa14$Attendance <- NULL
newfifa14$SYH <- NULL
newfifa14$SYD <- NULL
newfifa14$SYA <- NULL
newfifa14$HHW <- NULL
newfifa14$AHW <- NULL
newfifa14$HO <- NULL
newfifa14$AO <- NULL
newfifa14$HBP <- NULL
newfifa14$ABP <- NULL

write.csv(newfifa14,"newfifa 14.csv")

## Removing unwanted columns from fifa 15

newfifa15 = read.csv("latest15.csv",header = T,na.strings = "?")
newfifa15$Attendance <- NULL

newfifa15$HHW <- NULL
newfifa15$AHW <- NULL
newfifa15$HO <- NULL
newfifa15$AO <- NULL
newfifa15$HBP <- NULL
newfifa15$ABP <- NULL

write.csv(newfifa15,"newfifa 15.csv",row.names = FALSE)
