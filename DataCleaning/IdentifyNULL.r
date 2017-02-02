## Karan Chauhan
## Capstone Project

## This code identifies the attributes with null values

## Read the dataset

## Identifying null values from newfifa

newfifa = read.csv("newfifa.csv",header = T,na.strings = "?")

apply(is.na(newfifa), 2, any)
colnames(newfifa)[apply(is.na(newfifa), 2, any)]

## Identifying null values from newfifa2

newfifa2 = read.csv("newfifa 1-2.csv",header = T,na.strings = "?")

apply(is.na(newfifa2), 2, any)
colnames(newfifa2)[apply(is.na(newfifa2), 2, any)]

## Identifying null values from newfifa3

newfifa3 = read.csv("newfifa 3.csv",header = T,na.strings = "?")

apply(is.na(newfifa3), 2, any)
colnames(newfifa3)[apply(is.na(newfifa3), 2, any)]

## Identifying null values from newfifa8

newfifa8 = read.csv("newfifa 4-8.csv",header = T,na.strings = "?")

apply(is.na(newfifa8), 2, any)
colnames(newfifa8)[apply(is.na(newfifa8), 2, any)]

## Identifying null values from newfifa10

newfifa10 = read.csv("newfifa 9-10.csv",header = T,na.strings = "?")

apply(is.na(newfifa10), 2, any)
colnames(newfifa10)[apply(is.na(newfifa10), 2, any)]

## Identifying null values from newfifa11

newfifa11 = read.csv("newfifa 11.csv",header = T,na.strings = "?")

apply(is.na(newfifa11), 2, any)
colnames(newfifa11)[apply(is.na(newfifa11), 2, any)]

## Identifying null values from newfifa12

newfifa12 = read.csv("newfifa 12.csv",header = T,na.strings = "?")

apply(is.na(newfifa12), 2, any)
colnames(newfifa12)[apply(is.na(newfifa12), 2, any)]

## Identifying null values from newfifa13

newfifa13 = read.csv("newfifa 13.csv",header = T,na.strings = "?")

apply(is.na(newfifa13), 2, any)
colnames(newfifa13)[apply(is.na(newfifa13), 2, any)]

## Identifying null values from newfifa14

newfifa14 = read.csv("newfifa 14.csv",header = T,na.strings = "?")

apply(is.na(newfifa14), 2, any)
colnames(newfifa14)[apply(is.na(newfifa14), 2, any)]

## Identifying null values from newfifa15

newfifa15 = read.csv("newfifa 15.csv",header = T,na.strings = "?")

apply(is.na(newfifa15), 2, any)
colnames(newfifa15)[apply(is.na(newfifa15), 2, any)]

## Identifying null columns in FinalDataset

FinalDataset = read.csv("FinalDataset.csv",header = T,na.strings = "?")

apply(is.na(FinalDataset), 2, any)
colnames(FinalDataset)[apply(is.na(FinalDataset), 2, any)]




