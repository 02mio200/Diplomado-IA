# ------------ ggplot----------------------
# ayuda con los graficos 

#histogrma 
data("mtcars")
ggplot(data = mtcars, aes(x=mpg)) + 
  geom_histogram(aes (x = mpg), bins = 8, color = "red", 
                 fill = "white")
#pligono de frecuencias
ggplot((data = mtcars))+
  geom_freqpoly(aes(x=mpg), bins = 8, color = "blue")

#convinado
data("mtcars")
ggplot(data = mtcars, aes(x=mpg)) + 
  geom_histogram(aes (x = mpg), bins = 8, color = "red", 
                 fill = "white")+
  geom_freqpoly(aes(x=mpg), bins = 8, color = "blue")




library(Lock5Data)
data("NutritionStudy")

#gradica de barras

ggplot(NutritionStudy, aes (x=Smoke, fill = VitaminUse))+
  geom_bar(position = "dodge") # separa la primera categoria 

# box-plot
# en aes se puede agregar mas graficas
ggplot(NutritionStudy, aes(Age,Smoke))+
  geom_boxplot(color = "blue", fill = "green")+
  geom_jitter(color = "red", alpha = 0.3)
  #geom_point() # agregar los puntos sonbrepo poniedo puntos

  #coord_flip() rota la grafica

#grafica de dispersion 

ggplot(NutritionStudy, aes(Age, Cholesterol, color = Sex))+
  geom_point()

NutritionStudy %>%
  ggplot(aes(Age, Cholesterol, color = Sex))+
    geom_point() + 
  facet_grid(PriorSmoke~VitaminUse) # grafica en forma de tabla 
      facet_wrap(~VitaminUse) # en columna 



# cambiar etiquetas 
      
      NutritionStudy %>%
        ggplot(aes(Age, Cholesterol, color = Sex))+
        geom_point()+
        labs(title = "Grafico de colesterol vs Edad",
             subtitle = "Nutricion",
             x = "Edad",
             y = "Colesterol",
             color = "Genero")+
        theme_classic()

