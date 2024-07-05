

data("NutritionStudy")



NutritionStudy$Smoke <- factor(NutritionStudy$Smoke, labels = c("No","Si"))
NutritionStudy$Vitamin <- factor(NutritionStudy$Vitamin, labels = c("Regularmente","Ocasionalmente","No"))
NutritionStudy$PriorSmoke <- factor(NutritionStudy$PriorSmoke, labels = c("Nunca","Anterior","Actual"))
NutritionStudy$Sex <- factor(NutritionStudy$Sex, labels = c("Femenino","Masculino"))
NutritionStudy$VitaminUse <- factor(NutritionStudy$VitaminUse, labels = c("No","Ocacional","Regular"))

# calculando el promedio 

mean(NutritionStudy$Fiber)

#mediana 

median(NutritionStudy$Fiber)
#--------------


# calculando el promedio 

mean(NutritionStudy$Age)

#desciacion estandar
sd(NutritionStudy$Age)

table(NutritionStudy$Smoke)

#
boxplot(NutritionStudy$Cholesterol ~ NutritionStudy$PriorSmoke, horizontal = T)

#----------------------calculo de datos con indice
# variable que quiero calcular, porque datos agrupar , operacion
tapply(NutritionStudy$Calories, NutritionStudy$Sex, mean)

tapply(NutritionStudy$Calories, NutritionStudy$Sex, sd)

#---------------------------


mean(Cosecha_Jal$Superficie)
median(Cosecha_Jal$Superficie)
var(Cosecha_Jal$Superficie)
sd(Cosecha_Jal$Superficie)

quantile(Cosecha_Jal$Superficie)
boxplot(Cosecha_Jal$Superficie, horizontal = T)

# variable que quiero calcular, porque datos agrupar , operacion
tapply(Cosecha_Jal$Superficie, Cosecha_Jal$Cultivo, mean)

tapply(Cosecha_Jal$Superficie, Cosecha_Jal$Cultivo, sd)

#--------------coeficiente de asimetria y curtosis--------

#coeficiente de asimetria
skewness(Cosecha_Jal$Superficie)

kurtosis(Cosecha_Jal$Superficie)

boxplot(Cosecha_Jal$Superficie ~ Cosecha_Jal$Cultivo, horizontal = T)
