## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(StatComp20058)

## ----message=FALSE------------------------------------------------------------
data("data")
attach(data)
myst(age)

## ----message=FALSE, warning=FALSE---------------------------------------------
data("data")
attach(data)
mean_ci(age,0.95)

## -----------------------------------------------------------------------------
z = getRandomNum(x = 5,min = 2230,q25 = 18123,q50 = 52213,q75 = 78312,max = 234234123)
quantile(z)
fivenum(z)

## ----message=FALSE------------------------------------------------------------
data("data")
attach(data)
par(mfrow=c(4,1),mar=rep(2,4))
outlierKD(data,age)

## -----------------------------------------------------------------------------

data("irisl")
x<-matrix(iris[1:50,1],50,1)
y<-matrix(iris[1:50,2],50,1)
l<-lm(y~x)
summary(l)

## -----------------------------------------------------------------------------
GradientDescent(x,y,1e-14,1000,stepmethod=T,step=0.001,alpha=0.25,beta=0.8)

