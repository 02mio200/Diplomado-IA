#----------- Reto 12------------

# Modelo
# Salesi = Bo + B1 * Advertisingi + B2 * USi + Ei

# dos modelos 
# si esta ubicada en estados unidos
#  Salesi = Bo + B1 * Advertisingi + B2 (1)

model1 <- lm(Sales ~ Advertising+US, Carseats)

Carseats %>%
  ggplot(aes(Advertising,Sales, colour = US))+
  geom_point()+
  geom_smooth(method = "lm", se= F)

summary(modelSales)

# si no esta ubicada en estados unidos
#  Salesi = Bo + B1 * Advertisingi + B2 * (1)
#  Salesi = Bo + B1 * Advertisingi + B2 * (0)


model2 <- lm(Sales ~ Income + ShelveLoc, Carseats)

summary(modelSales2)
Carseats %>%
  ggplot(aes(Advertising,Sales, colour = ShelveLoc))+
  geom_point()+
  geom_smooth(method = "lm", se= F)

model3 <- lm(Sales ~ ., Carseats)
summary(model3)



anova(modelSalesT)


modcom <- lm(Sales ~.,Carseats)

summary(modcom)

anova(modcom)

predict(modcom)




#-------------Bondades de ajuste-------------
library(caTools)

split <- sample.split(Carseats$Sales, SplitRatio = 0.8)
table(split)


trainig <- subset(Carseats,split==T)
testing <- subset(Carseats,split==F)





modcom <- lm(Sales ~.,Carseats)

summary(modcom)

anova(modcom)

predict(modcom)





library(caTools)

split <- sample.split(Carseats$Sales, SplitRatio = 0.8)
table(split)


trainig <- subset(Carseats,split==T)
testing <- subset(Carseats,split==F)

mod3 <- lm(Sales ~ .,trainig)
summary(mod3)

#objervacioes nuevas

testing$pred <- predict(mod3, testing)






