data <- read.table("BloodPressure.dat", header = TRUE)
dev <- data[ ,c(2:4)]
doc <- data[ ,c(6:8)]
value1 <- c(dev$Dev1, dev$Dev2, dev$Dev3)
group1 <- c(rep("Dev1",15), rep("Dev2", 15), rep("Dev3", 15))
dev <- data.frame(value1, group1)
value2 <- c(doc$Doc1, doc$Doc2, doc$Doc3)
group2 <- c(rep("Doc1",15), rep("Doc2", 15), rep("Doc3", 15))
doc <- data.frame(value2, group2)
fit1 <- aov(dev$value1 ~ dev$group1)
summary(fit1)
fit2 <- aov(doc$value2 ~ doc$group2)
summary(fit2)
