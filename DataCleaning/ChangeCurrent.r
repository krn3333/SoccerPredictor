Current = read.csv("Current.csv",header = T,na.strings = "?")

Current$Winner <- ifelse(Current$Winner=='A', Current$AwayTeam,
                              ifelse(Current$Winner=='H', Current$HomeTeam,
                                     ifelse(Current$Winner=='D', "Draw",
                                            NA
                                           )))





