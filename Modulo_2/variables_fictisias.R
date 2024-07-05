

#----------Variables ficticias----------


# Modelo
# Tip = B0 + B1 * Credit
## con una variable
modtip <- lm(Tip ~ Credit , RestaurantTips)

# Tip = 3.249 + 1.847 (0) = 3.249
# Tip = 3.249 + 1.847 (1) = 5

summary(modtip)

#-----------Variable ficticia y cuanlitativa
# Tip = B0 + B1 * Credit + B2 * Monto
## con una variable
modtip <- lm(Tip ~ Credit + Bill, RestaurantTips)

# Tip = -0.29 + 0.04 * Credit +0.18 * Bill

# Credit = 0
# Tip = -0.29 + 0.04 +0.18 * Bill

#Credit = 1
# Tip = -0.29 + 0.04 * Credit +0.18 * Bill

summary(modtip)

# graficando

RestaurantTips%>%
  ggplot(aes(Bill,Tip , colour = Credit))+
    geom_point()+
    geom_smooth(method = "lm", se = F)

#----------Variable Ficticias con mas de dos categorias

# Tip = B0 + B1 * ServA + B2 * ServB + B3 * ServC 

modtip3 <- lm(Tip ~ Server, RestaurantTips)

#Server A
#Tip = 4.04 

#Server B
#Tip = 4.04 - 0.6072

#Server C
#Tip = 4.04 + 0.288

summary(modtip3)


modtip4 <- lm(Tip ~ Server + Bill, RestaurantTips)

# para no comparar

anova(modtip4)

summary(modtip4)

Boston$chas <- factor(Boston$chas)

modBosto <- lm(medv ~ ., Boston)
summary(Boston)

summary(modBosto)

anova(modBosto)

#---------





