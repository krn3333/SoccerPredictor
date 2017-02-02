## Karan Chauhan
## Capstone Project

## This code predicts the scores for the current season

## Read the dataset

HomeScores = read.csv("HomeScores.csv",header = T,na.strings = "?")
AwayScores = read.csv("AwayScores.csv",header = T,na.strings = "?")
unique(HomeScores$HomeTeam)
## Set appropriate seed

set.seed(1)

## Enter team names for scores

## Home Game Scores Mean
t1 <- 'Chelsea'
t2 <- 'Man City'
t3 <- 'Everton'
t4 <- 'Arsenal'

HomeTeamScore1 <- subset(HomeScores, HomeScores$HomeTeam == t2 & HomeScores$AwayTeam==t3) 
HomeTeamScore1
score1 <- ceiling(mean(HomeTeamScore1$HomeScore))
score1

HomeTeamScore2 <- subset(HomeScores, HomeScores$HomeTeam == t3 & HomeScores$AwayTeam==t2) 
HomeTeamScore2
score2 <- ceiling(mean(HomeTeamScore2$HomeScore))
score2

## Away Game Scores Mean

AwayTeamScore1 <- subset(AwayScores, AwayScores$HomeTeam == t2 & AwayScores$AwayTeam==t3) 
AwayTeamScore1
score3 <- floor(mean(AwayTeamScore1$AwayScore))
score3

AwayTeamScore2 <- subset(AwayScores, AwayScores$HomeTeam == t3 & AwayScores$AwayTeam==t2) 
AwayTeamScore2
score4 <- floor(mean(AwayTeamScore2$AwayScore))
score4

## For Chelsea at Home : 

cat("Home Team Score : ",score1,"\n")
cat("Away Team Score : ",score3,"\n")

## For Aston Villa at Home : 

cat("Home Team Score : ",score2,"\n")
cat("Away Team Score : ",score4,"\n")




