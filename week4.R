## str: compactly display the internal structure of an R object
str(str)
str(lm)
str(ls)

x <- rnorm(100, 2, 4)
x

summary(x)
str(x)

f <- gl(40, 10)
str(f)
summary(f)

library(dataset)
head(airquality)

str(airquality)

m <-matrix(rnorm(100), 10, 10)
m

str(m)

s <- split(airquality, airquality$Month)
str(s)

##Generating random numbers
rnorm(100, 2, 4)
dnorm()
pnorm()
rpois(100, 20)

#probability distribution functions usually have four functions associated with them.
#the functions are prefixed with a

#d for density, r for random number generation, p for cumulative distribution and q
#for quantile function


#setting the random number seed with set.seed ensures reproducibility
set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)

rpois(10, 1)
rpois(10, 2)
rpois(10, 20)

#the mean is roughly equal to the rate specified

ppois(2, 2)
ppois(4, 2)
ppois(6, 2)

#generating random numbers from a linear model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x +e
summary(y)
plot(x,y)

#what if x is binary?
set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x +e
summary(y)
plot(x,y)

#Generating random numbers from a generalized linear model
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y)

#Simulation - Random Sampling
set.seed(1)
sample(1:10, 4)
sample(1:10,4)
sample(letters, 5)
sample(1:10) ##permutation
sample(1:10, replace = TRUE) ## Sample w/replacement

#R Profiler
#using system.time

#proc_time
#user time: time changed to the CPU(s) for this expression
#elapsed time: "wall clock" time

system.time({
        n <- 1000
        r <- numeric(n)
        for (i in 1:n) {
                x <- rnorm(n)
                r[i] <- mean(x)
        }
})

#rprof()
#summaryRprof()

#do not use the two above together. Choose one of them.

## lm(y ~ x)
sample.interval=10000

# summaryRprof
# there are two methods for normalizing the data
#1) "by.total" divides the time spend in each function by the total run time
#2) "by.self" does the same but first substracts out time spent in function above in call stack

