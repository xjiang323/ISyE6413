data <- read.table("bolt.dat", header = TRUE)
data <- data[data$M.B == "M",]
value <- c(data$P.O, data$C.W, data$HT)
group <- c(rep("P.O", 10), rep("C.W", 10), rep("HT", 10))
cdata <- data.frame(value, group)
fit <- aov(cdata$value ~ cdata$group)
summary(fit)
res <- fit$residuals
par(mfrow = c(2,2))
plot(fit, which = 1)
qqnorm(res)
hist(res)
boxplot(res ~ group, data = cdata, main = "Box Whisker")
