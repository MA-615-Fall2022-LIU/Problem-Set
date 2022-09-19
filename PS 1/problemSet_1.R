myName <- "Jiahao Liu"

# QUESTION 1
v1 <- c(1:20)
v2 <- c(20:1)
v3 <- seq(1,19,2)
v4 <- rep(c(3,7,11),10)
v5 <- rep(c(3,7,11),11,length = 31)

# QUESTION 2
x <- seq(3,6,0.1)
x1 <- c(exp(x)*sin(x))

# QUESTION 3
i = 10:100
sum1 <- sum(i**3 + 4*i**2)

# QUESTION 4
str1 <- paste('label',1:30,sep = ' ')
str2 <- paste('function',1:30,sep = '')

# QUESTION 5
vs <- paste(1,"function",)


# QUESTION 6
m1 <- matrix(data = 1:9, nrow = 3, ncol = 3)
m1_ans <- m1%*%m1%*%m1

# QUESTION 7
M <- matrix(c(12,-12,12),nrow = 17, ncol = 3, byrow = T)
m2_ans <- t(M)%*%M

# QUESTION 8
A <- matrix(c(1,2,3,4,5,2,1,2,3,4,3,2,1,2,3,4,3,2,1,2,5,4,3,2,1),5,5)
b <- c(7,-1,-3,5,17)
m3_ans <- solve(A, b, fractions = TRUE)
solve(A)%*%b

# QUESTION 9
# (a)
function1 <- function(x){
  for (i in x) {
    return (x[n]**n)
  }
}
x <- seq(0,1,by = 0.1)
n <- c(1:11)
func1_ans <- function1(x)
round(func1_ans,digits = 5)

# (b)
function2 <- function(x){
  for (i in x){
    return (x[n]**n/n)
  }
}
x <- seq(0,1,by = 0.1)
n <- c(1:11)
func2_ans <- function2(x)
round(func2_ans,digits = 5)

# (c)
fun3_ans_f <- function(x,n){
  list <- 1:n
  return (1 + sum(x**list/list))
}
xv <- seq(0,1,by = 0.1)
fun3_ans <- fun3_ans_f(xv,length(xv))

# QUESTION 10
cel_to_far <- function(x){
  return ((9/5)*x + 32)
}
far_to_cel <- function(x){
  return ((x - 32)*(5/9))
}

# QUESTION 11
odd_ans <- function(x) {
  x[ x %% 2 != 0 ]
}

# QUESTION 12
fun <- function(r){
  s <- 1:r
  return (sum((s**(0.5)/(11 + 3.5*r**1.2))))
}
r <- 10
sum_ans <- sum(sapply(1:r, fun))

# QUESTION 13
modNumber <- function(x,y){
  if (x%%y == 0){
    return (x)
  } else {
    return (x+y-(x%%y))
  }
}

# QUESTION 14
numberOfWheels <- function(x){
  return(switch(x,"unicycle" = 1, "bike" = 2, "car" = 4, "truck" = 4, "tricycle" = 3, "motorcycle" = 2))
}

# QUESTION 15
myFactorial <- function(x){
  result = factorial(x)
  return (result)
}

# QUESTION 16
myCustomFactorial <- function(x,y){
  if (x > y){
    return (prod(y:x))
  } else if (x < y){
    return (prod(x:y))
  }
}

### QUESTION 17
data()
data(rivers)
customRiverMean <- function(x){
  for (i in rivers){
    if (i <= x){
   }
  }
  return(i)
}

# QUESTION 18
head(ToothGrowth)
longTeeth <- NULL
l <- ToothGrowth$len
for (i in l){
  if (l[i] > 15){
    # print (i)
    longTeeth <- c(longTeeth,l[i])
  }
}
longTeeth

# QUESTION 19
head(mtcars)
list <- apply(mtcars,2,mean)
averageHorsePower <- print(list[4])
averageWeight <- print(list[6])

# QUESTION 20
function_z <- function(x, y){
  colSums(outer(y, x, "<"))
}


