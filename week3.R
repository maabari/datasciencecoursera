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

x <-