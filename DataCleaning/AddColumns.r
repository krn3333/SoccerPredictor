## Karan Chauhan
## Capstone Project

## This code creates missing columns by taking mean of remaining columns

## Adding required columns to fifa

newfifa = read.csv("newfifa.csv",header = T,na.strings = "?")

newfifa$GBH = rowMeans(newfifa[,c("BWH", "B365H","IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa$GBD = rowMeans(newfifa[,c("BWD", "B365D","IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa$GBA = rowMeans(newfifa[,c("BWA", "B365A","IWA", "LBA", "WHA")], na.rm=TRUE)

newfifa$SBH = rowMeans(newfifa[,c("IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa$SBD = rowMeans(newfifa[,c("IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa$SBA = rowMeans(newfifa[,c("IWA", "LBA", "WHA")], na.rm=TRUE)

write.csv(newfifa,"newfifa.csv")

## Adding required columns to fifa 3

newfifa3 = read.csv("newfifa 3.csv",header = T,na.strings = "?")

newfifa3$SBH = rowMeans(newfifa3[,c("BWH", "B365H","IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa3$SBD = rowMeans(newfifa3[,c("BWD", "B365D","IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa3$SBA = rowMeans(newfifa3[,c("BWA", "B365A","IWA", "LBA", "WHA")], na.rm=TRUE)

write.csv(newfifa3,"newfifa 3.csv")

## Adding required columns to fifa 11

newfifa10 = read.csv("newfifa 9-10.csv",header = T,na.strings = "?")
newfifa11 = read.csv("newfifa 11.csv",header = T,na.strings = "?")

newfifa11$Bb1X2 = rowMeans(newfifa[,c("Bb1X2","BbOU")], na.rm=TRUE)
newfifa11$BbMxH = rowMeans(newfifa[,c("BbMxH","BbMxH")], na.rm=TRUE)
newfifa11$BbAvH = rowMeans(newfifa[,c("BbAvH","BbAvH")], na.rm=TRUE)
newfifa11$BbMxD = rowMeans(newfifa[,c("BbMxD","BbMxD")], na.rm=TRUE)
newfifa11$BbAvD = rowMeans(newfifa[,c("BbAvD","BbAvD")], na.rm=TRUE)
newfifa11$BbMxA = rowMeans(newfifa[,c("BbMxA","BbMxA")], na.rm=TRUE)
newfifa11$BbAvA = rowMeans(newfifa[,c("BbAvA","BbAvA")], na.rm=TRUE)

newfifa11$BbOU = rowMeans(newfifa[,c("Bb1X2","BbOU")], na.rm=TRUE)
newfifa11$BbMx.2.5 = rowMeans(newfifa[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE)
newfifa11$BbAv.2.5 = rowMeans(newfifa[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE)
newfifa11$BbMx.2.5.1 = rowMeans(newfifa[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE)
newfifa11$BbAv.2.5.1 = rowMeans(newfifa[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE)

write.csv(newfifa11,"newfifa 11.csv")

## Adding required columns to fifa 12

newfifa12 = read.csv("newfifa 12.csv",header = T,na.strings = "?")

newfifa12$BWH = rowMeans(newfifa12[,c("GBH", "B365H","IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa12$BWD = rowMeans(newfifa12[,c("GBD", "B365D","IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa12$BWA = rowMeans(newfifa12[,c("GBA", "B365A","IWA", "LBA", "WHA")], na.rm=TRUE)

newfifa12$Bb1X2 = rowMeans(newfifa3[,c("Bb1X2","BbOU")], na.rm=TRUE)
newfifa12$BbMxH = rowMeans(newfifa3[,c("BbMxH","BbMxH")], na.rm=TRUE)
newfifa12$BbAvH = rowMeans(newfifa3[,c("BbAvH","BbAvH")], na.rm=TRUE)
newfifa12$BbMxD = rowMeans(newfifa3[,c("BbMxD","BbMxD")], na.rm=TRUE)
newfifa12$BbAvD = rowMeans(newfifa3[,c("BbAvD","BbAvD")], na.rm=TRUE)
newfifa12$BbMxA = rowMeans(newfifa3[,c("BbMxA","BbMxA")], na.rm=TRUE)
newfifa12$BbAvA = rowMeans(newfifa3[,c("BbAvA","BbAvA")], na.rm=TRUE)

newfifa12$BbOU = rowMeans(newfifa3[,c("Bb1X2","BbOU")], na.rm=TRUE)
newfifa12$BbMx.2.5 = rowMeans(newfifa3[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE)
newfifa12$BbAv.2.5 = rowMeans(newfifa3[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE)
newfifa12$BbMx.2.5.1 = rowMeans(newfifa3[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE)
newfifa12$BbAv.2.5.1 = rowMeans(newfifa3[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE)

write.csv(newfifa12,"newfifa 12.csv")

## Adding required columns to fifa 13

newfifa13 = read.csv("newfifa 13.csv",header = T,na.strings = "?")

newfifa13$BWH = rowMeans(newfifa13[,c("GBH", "B365H","IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa13$BWD = rowMeans(newfifa13[,c("GBD", "B365D","IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa13$BWA = rowMeans(newfifa13[,c("GBA", "B365A","IWA", "LBA", "WHA")], na.rm=TRUE)

newfifa13$Bb1X2 = (rowMeans(newfifa[,c("Bb1X2","BbOU")], na.rm=TRUE) 
                  + rowMeans(newfifa3[,c("Bb1X2","BbOU")],na.rm = TRUE))/2

newfifa13$BbMxH = (rowMeans(newfifa[,c("BbMxH","BbMxH")], na.rm=TRUE) 
                   + rowMeans(newfifa3[,c("BbMxH","BbMxH")],na.rm = TRUE))/2

newfifa13$BbAvH = (rowMeans(newfifa[,c("BbAvH","BbAvH")], na.rm=TRUE) 
                  + rowMeans(newfifa3[,c("BbAvH","BbAvH")], na.rm=TRUE))/2

newfifa13$BbMxD = (rowMeans(newfifa[,c("BbMxD","BbMxD")], na.rm=TRUE) 
                   + rowMeans(newfifa3[,c("BbMxD","BbMxD")], na.rm=TRUE))/2

newfifa13$BbAvD = (rowMeans(newfifa[,c("BbAvD","BbAvD")], na.rm=TRUE)
                   + rowMeans(newfifa3[,c("BbAvD","BbAvD")], na.rm=TRUE))/2

newfifa13$BbMxA = (rowMeans(newfifa[,c("BbMxA","BbMxA")], na.rm=TRUE)
                   + rowMeans(newfifa3[,c("BbMxA","BbMxA")], na.rm=TRUE))/2

newfifa13$BbAvA = (rowMeans(newfifa[,c("BbAvA","BbAvA")], na.rm=TRUE)
                    + rowMeans(newfifa3[,c("BbAvA","BbAvA")], na.rm=TRUE))/2

newfifa13$BbOU = (rowMeans(newfifa[,c("Bb1X2","BbOU")], na.rm=TRUE)
                  + rowMeans(newfifa3[,c("Bb1X2","BbOU")], na.rm=TRUE))/2

newfifa13$BbMx.2.5 = (rowMeans(newfifa[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE)
                      + rowMeans(newfifa3[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE))/2

newfifa13$BbAv.2.5 = (rowMeans(newfifa[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE)
                     + rowMeans(newfifa3[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE))/2

newfifa13$BbMx.2.5.1 = (rowMeans(newfifa[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE)
                       +  rowMeans(newfifa3[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE))/2

newfifa13$BbAv.2.5.1 = (rowMeans(newfifa[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE)
                        + rowMeans(newfifa3[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE))/2

write.csv(newfifa13,"newfifa 13.csv")

## Adding required columns to fifa 14

newfifa14 = read.csv("newfifa 14.csv",header = T,na.strings = "?")

newfifa14$BWH = rowMeans(newfifa14[,c("GBH", "IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa14$BWD = rowMeans(newfifa14[,c("GBD", "IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa14$BWA = rowMeans(newfifa14[,c("GBA", "IWA", "LBA", "WHA")], na.rm=TRUE)

newfifa14$B365H = rowMeans(newfifa14[,c("GBH", "SBH","IWH", "LBH")], na.rm=TRUE)
newfifa14$B365D = rowMeans(newfifa14[,c("GBD", "SBD","IWD", "LBD")], na.rm=TRUE)
newfifa14$B365A = rowMeans(newfifa14[,c("GBA", "SBA","IWA", "LBA")], na.rm=TRUE)

newfifa14$Bb1X2 = (rowMeans(newfifa11[,c("Bb1X2","BbOU")], na.rm=TRUE) 
                   + rowMeans(newfifa3[,c("Bb1X2","BbOU")],na.rm = TRUE))/2

newfifa14$BbMxH = (rowMeans(newfifa11[,c("BbMxH","BbMxH")], na.rm=TRUE) 
                   + rowMeans(newfifa3[,c("BbMxH","BbMxH")],na.rm = TRUE))/2

newfifa14$BbAvH = (rowMeans(newfifa11[,c("BbAvH","BbAvH")], na.rm=TRUE) 
                   + rowMeans(newfifa3[,c("BbAvH","BbAvH")], na.rm=TRUE))/2

newfifa14$BbMxD = (rowMeans(newfifa11[,c("BbMxD","BbMxD")], na.rm=TRUE) 
                   + rowMeans(newfifa3[,c("BbMxD","BbMxD")], na.rm=TRUE))/2

newfifa14$BbAvD = (rowMeans(newfifa11[,c("BbAvD","BbAvD")], na.rm=TRUE)
                   + rowMeans(newfifa3[,c("BbAvD","BbAvD")], na.rm=TRUE))/2

newfifa14$BbMxA = (rowMeans(newfifa11[,c("BbMxA","BbMxA")], na.rm=TRUE)
                   + rowMeans(newfifa3[,c("BbMxA","BbMxA")], na.rm=TRUE))/2

newfifa14$BbAvA = (rowMeans(newfifa11[,c("BbAvA","BbAvA")], na.rm=TRUE)
                   + rowMeans(newfifa3[,c("BbAvA","BbAvA")], na.rm=TRUE))/2

newfifa14$BbOU = (rowMeans(newfifa11[,c("Bb1X2","BbOU")], na.rm=TRUE)
                  + rowMeans(newfifa3[,c("Bb1X2","BbOU")], na.rm=TRUE))/2

newfifa14$BbMx.2.5 = (rowMeans(newfifa11[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE)
                      + rowMeans(newfifa3[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE))/2

newfifa14$BbAv.2.5 = (rowMeans(newfifa11[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE)
                      + rowMeans(newfifa3[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE))/2

newfifa14$BbMx.2.5.1 = (rowMeans(newfifa11[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE)
                        +  rowMeans(newfifa3[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE))/2

newfifa14$BbAv.2.5.1 = (rowMeans(newfifa11[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE)
                        + rowMeans(newfifa3[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE))/2

write.csv(newfifa14,"newfifa 14.csv")

## Adding required columns to fifa 15

newfifa15 = read.csv("newfifa 15.csv",header = T,na.strings = "?")

newfifa15$BWH = rowMeans(newfifa15[,c("GBH", "IWH", "LBH", "WHH")], na.rm=TRUE)
newfifa15$BWD = rowMeans(newfifa15[,c("GBD", "IWD", "LBD", "WHD")], na.rm=TRUE)
newfifa15$BWA = rowMeans(newfifa15[,c("GBA", "IWA", "LBA", "WHA")], na.rm=TRUE)

newfifa15$B365H = rowMeans(newfifa15[,c("GBH", "SBH","IWH", "LBH")], na.rm=TRUE)
newfifa15$B365D = rowMeans(newfifa15[,c("GBD", "SBD","IWD", "LBD")], na.rm=TRUE)
newfifa15$B365A = rowMeans(newfifa15[,c("GBA", "SBA","IWA", "LBA")], na.rm=TRUE)

newfifa15$Bb1X2 = (rowMeans(newfifa13[,c("Bb1X2","BbOU")], na.rm=TRUE) 
                   + rowMeans(newfifa14[,c("Bb1X2","BbOU")],na.rm = TRUE))/2

newfifa15$BbMxH = (rowMeans(newfifa13[,c("BbMxH","BbMxH")], na.rm=TRUE) 
                   + rowMeans(newfifa14[,c("BbMxH","BbMxH")],na.rm = TRUE))/2

newfifa15$BbAvH = (rowMeans(newfifa13[,c("BbAvH","BbAvH")], na.rm=TRUE) 
                   + rowMeans(newfifa14[,c("BbAvH","BbAvH")], na.rm=TRUE))/2

newfifa15$BbMxD = (rowMeans(newfifa13[,c("BbMxD","BbMxD")], na.rm=TRUE) 
                   + rowMeans(newfifa14[,c("BbMxD","BbMxD")], na.rm=TRUE))/2

newfifa15$BbAvD = (rowMeans(newfifa13[,c("BbAvD","BbAvD")], na.rm=TRUE)
                   + rowMeans(newfifa14[,c("BbAvD","BbAvD")], na.rm=TRUE))/2

newfifa15$BbMxA = (rowMeans(newfifa13[,c("BbMxA","BbMxA")], na.rm=TRUE)
                   + rowMeans(newfifa14[,c("BbMxA","BbMxA")], na.rm=TRUE))/2

newfifa15$BbAvA = (rowMeans(newfifa13[,c("BbAvA","BbAvA")], na.rm=TRUE)
                   + rowMeans(newfifa14[,c("BbAvA","BbAvA")], na.rm=TRUE))/2

newfifa15$BbOU = (rowMeans(newfifa13[,c("Bb1X2","BbOU")], na.rm=TRUE)
                  + rowMeans(newfifa14[,c("Bb1X2","BbOU")], na.rm=TRUE))/2

newfifa15$BbMx.2.5 = (rowMeans(newfifa13[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE)
                      + rowMeans(newfifa14[,c("BbMx.2.5","BbMx.2.5")], na.rm=TRUE))/2

newfifa15$BbAv.2.5 = (rowMeans(newfifa13[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE)
                      + rowMeans(newfifa14[,c("BbAv.2.5","BbAv.2.5")], na.rm=TRUE))/2

newfifa15$BbMx.2.5.1 = (rowMeans(newfifa13[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE)
                        +  rowMeans(newfifa14[,c("BbMx.2.5.1","BbMx.2.5.1")], na.rm=TRUE))/2

newfifa15$BbAv.2.5.1 = (rowMeans(newfifa13[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE)
                        + rowMeans(newfifa14[,c("BbAv.2.5.1","BbAv.2.5.1")], na.rm=TRUE))/2

write.csv(newfifa15,"newfifa 15.csv")