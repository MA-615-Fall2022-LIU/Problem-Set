myName <- "Jiahao Liu"

#1
library(dplyr)
mydata1 <- iris
iris.vers <- mydata1%>%
  filter(Species == "versicolor")
ans_1 <- iris.vers
ans_1

#2
sepal.dif <- iris.vers$Sepal.Length - iris.vers$Sepal.Width
ans_2 <- sepal.dif
ans_2

#3
iris.vers <- cbind(iris.vers,sepal.dif)
ans_3 <- iris.vers
ans_3

#4
mydata2 <- mtcars
ans_4 <- lapply(mydata2,class)
ans_4

#5
library(tidyverse)
mydata2$am <- as.integer(mydata2$am)
mydata2$cyl <- as.integer(mydata2$cyl)
mydata2$vs <- as.integer(mydata2$vs)
newmtc <- mydata2
ans_5 <- lapply(newmtc,class)
ans_5

#6
ans_6 <- newmtc %>% 
  mutate_if(is.numeric, round, digit = 1)
ans_6

#7
newdata <- mydata1%>%
  filter(Species == "virginica" & Sepal.Width > 3.5)
ans_7 <- newdata
ans_7

#8
df = subset(newdata, select = -c(Species))
ans_8 <- df
ans_8

#9
ans_9 <- which(mydata1$Species == "virginica" & mydata1$Sepal.Width > 3.5)
ans_9

#10
mydata3 <- diamonds
ideal <- mydata3%>%
  filter(cut == "Ideal" & carat < 0.21)
ideal
ans_10 <- nrow(ideal)
ans_10

#11
mydata3$x <- as.integer(mydata3$x)
mydata3$y <- as.integer(mydata3$y)
mydata3$z <- as.integer(mydata3$z)
data11 <- mydata3
data11_new <- data11%>%
  filter(x+y+z>40)
data11_new
ans_11 <- nrow(data11_new)
ans_11

#12
data12 <- mydata3%>%
  filter(price > 10000|depth >= 70)
data12
ans_12 <- nrow(data12)
ans_12

#13
ans_13 <- subset(mydata3[c(67,982),], select = c(color,y))
ans_13

#14
ans_14 <- mydata3[c(453,792,10489),]
ans_14

#15
ans_15 <- subset(mydata3[c(1:10),], select = c(x,y,z))
ans_15

#16
newdiam <- subset(mydata3[c(1:1000),])
ans_16 <- newdiam
ans_16

#17
ans_17 <- newdiam[order(newdiam$price),]
ans_17

#18
set.seed(56)
diam750 <- mydata3[sample(nrow(mydata3), 750),]
ans_18 <- diam750
ans_18

#19
ans_19 <- summary(diam750)
ans_19

#20
library(ggplot2)
ggplot(diam750, aes(x = depth, y = price, color = price)) +
  geom_point(size=2, shape=20)+labs(title = "Scatterplot of price vs depth")

