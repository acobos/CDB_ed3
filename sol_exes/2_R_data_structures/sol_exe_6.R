# Solution to exercise 2.6

# conduct a t-test on the `lwb` data in package `COUNT`
library(COUNT)
data(lbw)
res <- t.test(bwt ~ smoke, data = lbw)
res


# a) class of object `res`; is it a list?
class(res)
is.list(res)

# b) names of elements
names(res)

# c) p-value, and same rounded to 3 decimals
res$p.value
round(res$p.value, 3)

# d) means of bwt
res$estimate
round(res$estimate, 1)

# e) their difference
diff(res$estimate)
round(diff(res$estimate), 1)

# f) confidence interval for this difference
res$conf.int
round(res$conf.int, 1)
