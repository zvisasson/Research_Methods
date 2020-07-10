library("ggpubr")

corrData <- read.csv("https://raw.githubusercontent.com/zvisasson/Research_Methods/master/data/correlation_db.csv")

ggscatter(corrData, x = "x", y = "y", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "x data", ylab = "y data")

res <- cor.test(corrData$x, corrData$y,method = "pearson")
res
