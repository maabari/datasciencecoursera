x <- 1:4
lapply(x, runif, min = 0, max = 10)

x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
x

lapply(x, function(elt) elt[,1])

#sapply try to simplify lapply

x <-list(a = 1:4, b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5))
lapply(x, mean)
sapply(x, mean)

#see the diff above

#apply is used to evaluate a function

x <-matrix(rnorm(200), 20, 10)
apply(x, 2, mean)
apply(x, 1, sum)

rowSums=apply(x, 1, sum)
rowSums

rowMeans=apply(x,1, mean)
rowMeans

colSums=apply(x,2, mean)
colSums

colSums=apply(x,2, mean)
colSums

#quantiles of the rows of the matrix

x <-matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))

#the 1 in the apply function indicates rows. 2 indicates columns and if you type c(1,2)
#it indicates both rows and columns

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)

#above is an average matrix in an array

rowMeans(a, dims = 2)

#Think of a stack of a 2 by 2 matrices that in the end are averaged together.
#That is what we do in the above example.

#mapply is a multivariate apply of sorts which applies over a set of arguemnets

mapply(rep, 1:4, 4:1)

noise <- function(n, mean, sd) {
        rnorm(n, mean, sd)
}
noise(5,1,2) #wrong

mapply(noise, 1:5, 1:5, 2)

#tapply is used to apply a function over subsets of a vector. I don't know why it's called tapply.

x <-c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10)
f

tapply(x, f, mean)
tapply(x, f, mean, simplify=FALSE)
tapply(x, f, range)


#SPLIT
x <-c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10)
split(x, f)

lapply(split(x, f), mean)

library(datasets)
head(airquality)
s <- split(airquality, airquality$Month)
s

lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

#Use sapply to get the results into a matrix instead of vectors

sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

#To fix the NA problem

sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],na.rm=TRUE))