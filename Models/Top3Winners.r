## Karan Chauhan
## Capstone Project

## This code determines the top 3 winners of the next Premier League Season

## Read the dataset

PredictWinner <- read.csv("PredictedWinnerMR.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

## Fetching the columns with specific teams for all teams
## Calculating the total points for all teams to predict the winners

rf1 <- subset(PredictWinner,PredictWinner$HomeTeam=='Chelsea')
nrow(rf1)
pt1 <- round(mean(rf1$HomeRF),digits = 0)
pt1

rf2 <- subset(PredictWinner,PredictWinner$HomeTeam=='Man United')
nrow(rf2)
pt2 <- round(mean(rf2$HomeRF),digits = 0)
pt2

rf3 <- subset(PredictWinner,PredictWinner$HomeTeam=='Man City')
nrow(rf3)
pt3 <- round(mean(rf3$HomeRF),digits = 0)
pt3

rf4 <- subset(PredictWinner,PredictWinner$HomeTeam=='Arsenal')
nrow(rf4)
pt4 <- round(mean(rf4$HomeRF),digits = 0)
pt4

rf5 <- subset(PredictWinner,PredictWinner$HomeTeam=='Tottenham')
nrow(rf5)
pt5 <- round(mean(rf5$HomeRF),digits = 0)
pt5

rf6 <- subset(PredictWinner,PredictWinner$HomeTeam=='Liverpool')
nrow(rf6)
pt6 <- round(mean(rf6$HomeRF),digits = 0)
pt6

rf7 <- subset(PredictWinner,PredictWinner$HomeTeam=='Everton')
pt7 <- round(mean(rf7$HomeRF),digits = 0)
pt7

rf8 <- subset(PredictWinner,PredictWinner$HomeTeam=='Watford')
pt8 <- round(mean(rf8$HomeRF),digits = 0)
pt8 

rf9 <- subset(PredictWinner,PredictWinner$HomeTeam=='Southampton')
pt9 <- round(mean(rf9$HomeRF),digits = 0)
pt9

rf10 <- subset(PredictWinner,PredictWinner$HomeTeam=='Bournemouth')
pt10 <- round(mean(rf10$HomeRF),digits = 0)
pt10

rf11 <- subset(PredictWinner,PredictWinner$HomeTeam=='Leicester')
pt11 <- round(mean(rf11$HomeRF),digits = 0)
pt11

rf12 <- subset(PredictWinner,PredictWinner$HomeTeam=='Stoke')
pt12 <- round(mean(rf7$HomeRF),digits = 0)
pt12

rf13 <- subset(PredictWinner,PredictWinner$HomeTeam=='Crystal Palace')
pt13 <- round(mean(rf13$HomeRF),digits = 0)
pt13

rf14 <- subset(PredictWinner,PredictWinner$HomeTeam=='Burnley')
pt14 <- round(mean(rf14$HomeRF),digits = 0)
pt14

rf15 <- subset(PredictWinner,PredictWinner$HomeTeam=='Middlesborough')
pt15 <- round(mean(rf15$HomeRF),digits = 0)
pt15

rf16 <- subset(PredictWinner,PredictWinner$HomeTeam=='West Brom')
pt16 <- round(mean(rf13$HomeRF),digits = 0)
pt16

rf17 <- subset(PredictWinner,PredictWinner$HomeTeam=='West Ham')
pt17 <- round(mean(rf17$HomeRF),digits = 0)
pt17

rf18 <- subset(PredictWinner,PredictWinner$HomeTeam=='Hull')
pt18 <- round(mean(rf18$HomeRF),digits = 0)
pt18

rf19 <- subset(PredictWinner,PredictWinner$HomeTeam=='Swansea')
pt19 <- round(mean(rf17$HomeRF),digits = 0)
pt19

rf20 <- subset(PredictWinner,PredictWinner$HomeTeam=='Sunderland')
pt20 <- round(mean(rf17$HomeRF),digits = 0)
pt20

res3 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Chelsea') 
nrow(res3)

res4 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Chelsea')
nrow(res4)

add1 <- nrow(res3) + nrow(res4) + pt1
add1

res5 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Man United') 
nrow(res5)

res6 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Man United')
nrow(res6)

add2 <- nrow(res5) + nrow(res6) + pt2
add2

res7 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Man City') 
nrow(res7)

res8 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Man City')
nrow(res8)

add3 <- nrow(res7) + nrow(res8) + pt3
add3

res9 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Arsenal') 
nrow(res9)

res10 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Arsenal')
nrow(res10)

add4 <- nrow(res9) + nrow(res10) + pt4
add4

res11 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Tottenham') 
nrow(res11)

res12 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Tottenham')
nrow(res12)

add5 <- nrow(res11) + nrow(res12) + pt5
add5

res13 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Liverpool') 
nrow(res13)

add6 <- nrow(res6) + nrow(res6) + pt6
add6

res14 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Liverpool')
nrow(res14)

res15 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Everton') 
nrow(res15)

res16 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Everton')
nrow(res16)

add7 <- nrow(res15) + nrow(res16) + pt7
add7 

res17 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Watford') 
nrow(res17)

res18 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Watford')
nrow(res18)

add8 <- nrow(res17) + nrow(res18) + pt8
add8

res19 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Southampton') 
nrow(res19)

res20 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Southampton')
nrow(res20)

add9 <- nrow(res19) + nrow(res20) + pt9
add9

res21 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Bournemouth') 
nrow(res21)

res22 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Bournemouth')
nrow(res22)

add10 <- nrow(res21) + nrow(res22) + pt10
add10

res23 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Leicester') 
nrow(res23)

res24 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Leicester')
nrow(res24)

add11 <- nrow(res23) + nrow(res24) + pt11
add11

res25 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Stoke') 
nrow(res25)

res26 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Stoke')
nrow(res26)

add12 <- nrow(res25) + nrow(res26) + pt12
add12

res27 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Crystal Palace') 
nrow(res27)

res28 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Crystal Palace')
nrow(res28)

add13 <- nrow(res27) + nrow(res28) + pt13
add13

res29 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Burnley') 
nrow(res29)

res30 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Burnley')
nrow(res30)

add14 <- nrow(res29) + nrow(res30) + pt14
add14

res31 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Middlesborough') 
nrow(res31)

res32 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Middlesborough')
nrow(res32)

add15 <- nrow(res31) + nrow(res32) + pt15
add15

res33 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='West Brom') 
nrow(res33)

res34 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='West Brom')
nrow(res34)

add16 <- nrow(res33) + nrow(res34) + pt16
add16

res35 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='West Ham') 
nrow(res35)

res36 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='West Ham')
nrow(res36)

add17 <- nrow(res35) + nrow(res36) + pt17
add17

res37 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Hull') 
nrow(res37)

res38 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Hull')
nrow(res38)

add18 <- nrow(res37) + nrow(res38) + pt18
add18

res39 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Swansea') 
nrow(res39)

res40 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Swansea')
nrow(res40)

add19 <- nrow(res39) + nrow(res40) + pt19
add19

res41 <- subset(PredictWinner,PredictWinner$Winner=='H' & PredictWinner$HomeTeam=='Sunderland') 
nrow(res41)

res42 <- subset(PredictWinner,PredictWinner$Winner=='A' & PredictWinner$AwayTeam=='Sunderland')
nrow(res42)

add20 <- nrow(res41) + nrow(res42) + pt20
add20

## Displating the total points for all teams

cat1 <- cat("Total wins for Chelsea : ",add1)
cat2 <-cat("Total wins for Man United : ",add2)
cat3 <-cat("Total wins for Man City : ",add3)
cat4 <-cat("Total wins for Arsenal : ",add4)
cat5 <-cat("Total wins for Tottenham : ",add5)
cat6 <-cat("Total wins for Liverpool : ",add6)
cat7 <-cat("Total wins for Everton : ",add7)
cat8 <-cat("Total wins for Watford : ",add8)
cat9 <-cat("Total wins for Southampton : ",add9)
cat10 <-cat("Total wins for Bournemouth : ",add10)
cat11 <-cat("Total wins for Leicester : ",add11)
cat12 <-cat("Total wins for Stoke : ",add12)
cat13 <-cat("Total wins for Crystal Palace : ",add13)
cat14 <-cat("Total wins for Burnley : ",add14)
cat15 <-cat("Total wins for Middlesbrough : ",add15)
cat16 <-cat("Total wins for West Brom : ",add16)
cat17 <-cat("Total wins for West Ham : ",add17)
cat18 <-cat("Total wins for Hull : ",add18)
cat19 <-cat("Total wins for Swansea : ",add19)
cat20 <-cat("Total wins for Sunderland : ",add20)

## Determining the top 3 winners

Winner1 <- max(add1,add2,add3,add4,add5,add6,add7,add8,add9,add10,add11,add12,add13,add14,add16,add17
    ,add18,add19,add20)
cat("Winner: Manchester City with",Winner1,"points")

Winner2 <-max(add1,add2,add4,add5,add6,add7,add8,add9,add10,add11,add12,add13,add14,add16,add17
    ,add18,add19,add20)
cat("Runner Up: Chelsea with",Winner2, "points")

Winner3 <- max(add2,add4,add5,add6,add7,add8,add9,add10,add11,add12,add13,add14,add16,add17
               ,add18,add19,add20)
cat("Third Positon: Arsenal with",Winner3, "points")