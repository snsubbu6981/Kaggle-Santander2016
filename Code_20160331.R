sant.train <- read.csv("E://Kaggle Santander/train.csv")
sant.test <- read.csv("E://Kaggle Santander/test.csv")
model1 <- glm(TARGET ~ var15+num_var5 + var36 + var38, family = binomial, sant.train)
summary(model1)

model1.outsample <- predict(model1, sant.test, type = "response")
write.table(model1.outsample, "E://Kaggle Santander/test.csv")
table(model1.outsample)
