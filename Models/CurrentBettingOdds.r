## Karan Chauhan
## Capstone Project

## This code predicts the bettig odds for current season

## Read the dataset

BettingHomeOdds <- read.csv("HomeBettingOdds.csv",header = T,na.strings = "?")
BettingAwayOdds <- read.csv("AwayBettingOdds.csv",header = T,na.strings = "?")
BettingDrawOdds <- read.csv("DrawBettingOdds.csv",header = T,na.strings = "?")

## Set appropriate seed

set.seed(1)

## Enter team names

## Home Betting Odds Mean

HomeBettingOdds1 <- subset(BettingHomeOdds, BettingHomeOdds$HomeTeam == 'Chelsea' & BettingHomeOdds$AwayTeam=='Man City') 
HomeBettingOdds1
mean(HomeBettingOdds1$HomeBettingOdds)

HomeBettingOdds2 <- subset(BettingHomeOdds, BettingHomeOdds$HomeTeam == 'Man City' & BettingHomeOdds$AwayTeam=='Chelsea') 
HomeBettingOdds2
mean(HomeBettingOdds2$HomeBettingOdds)

## Draw Betting Odds Mean

DrawBettingOdds1 <- subset(BettingDrawOdds, BettingDrawOdds$HomeTeam == 'Chelsea' & BettingDrawOdds$AwayTeam=='Man City') 
DrawBettingOdds1
mean(DrawBettingOdds1$DrawBettingOdds)

DrawBettingOdds2 <- subset(BettingDrawOdds, BettingDrawOdds$HomeTeam == 'Man City' & BettingDrawOdds$AwayTeam=='Chelsea') 
DrawBettingOdds2
mean(DrawBettingOdds2$DrawBettingOdds)

## Away Betting Odds Mean

AwayBettingOdds1 <- subset(BettingAwayOdds, BettingAwayOdds$HomeTeam == 'Chelsea' & BettingAwayOdds$AwayTeam=='Man City') 
AwayBettingOdds1
mean(AwayBettingOdds1$AwayBettingOdds)

AwayBettingOdds2 <- subset(BettingAwayOdds, BettingAwayOdds$HomeTeam == 'Man City' & BettingAwayOdds$AwayTeam=='Chelsea') 
AwayBettingOdds2
mean(AwayBettingOdds2$AwayBettingOdds)

## For Chelsea at Home :

cat("Home Betting Odds are : ",mean(HomeBettingOdds1$HomeBettingOdds),"\n")
cat("Draw Betting Odds are : ",mean(DrawBettingOdds1$DrawBettingOdds),"\n")
cat("Away Betting Odds are : ",mean(AwayBettingOdds1$AwayBettingOdds),"\n")

## For Man City at Home : 

cat("Home Betting Odds are : ",mean(HomeBettingOdds2$HomeBettingOdds),"\n")
cat("Draw Betting Odds are : ",mean(DrawBettingOdds2$DrawBettingOdds),"\n")
cat("Away Betting Odds are : ",mean(AwayBettingOdds2$AwayBettingOdds),"\n")

