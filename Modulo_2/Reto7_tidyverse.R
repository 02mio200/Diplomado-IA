
#Obtener una tabla con las variables: estado, municipio, modalidad y variedad donde 
#la modalidad de riego es por temporal para el municipio Acatzingo.

Frijol %>% 
  select(NomEstado,NomMunicipio,Modalidad)%>%
    filter(NomMunicipio == "Acatzingo" &  Modalidad == "Temporal")

#Obtener la tabla con las variables: Nombre del estado, Superficie sembrada, 
#variedad, año agrícola y modalidad de riego donde la superficie sembrada es 
#mayor a 20000 hectáreas en el estado de Sinaloa.

Frijol %>%
  select(NomEstado,SuperficieSembrada,Variedad,AñoAgricola,Modalidad) %>%
    filter(SuperficieSembrada > 20000 & NomEstado == "Sinaloa")

#Obtener el valor máximo y mínimo de la superficie cosechada para la variedad
#“Frijol bayo”.

Frijol %>%
  select(SuperficieSembrada, Variedad)%>%
    filter(Variedad == "Frijol bayo") %>%
      summarise(max(SuperficieSembrada),min(SuperficieSembrada))

#Obtener una tabla con las variables: superficie sembrada, superficie cosechada
#y variedad donde la superficie sembrada sea diferente a la superficie cosechada.

Frijol %>%
  select(SuperficieSembrada, SuperficieCosechada, Variedad)%>%
    filter(SuperficieSembrada != SuperficieCosechada)

#Obtener el promedio de la superficie sembrada por estado.
Frijol %>%
  group_by(NomEstado)%>%
    summarise(mean(SuperficieSembrada))

# Obtener máximo y promedio para cada una de las variedades de frijol.
Frijol %>%
  group_by(Variedad)%>%
  summarise(max(SuperficieCosechada), mean(SuperficieCosechada))

# Utilizando la función “mutate” crear una nueva variable con Rendimiento
#Obtenido (Productividad obtenida dividida por la superficie cosechada Ton/ha)
#para cada una de las observaciones del conjunto de datos.
    
Frijol %>%
  mutate(RendimientoObtenido = (ProducciónObtenida/SuperficieCosechada) )

#Calcula el número de observaciones en la variable “Superficie Con Sanidad Vegetal”
#que tienen valores NA (Not Available).(Utiliza la función table con la opción 
#useNA = c(”always”))


table(Frijol$SuperficieConSanidadVegetal, useNA = c("always"))
# contar
table(is.na(Frijol$SuperficieConSanidadVegetal), useNA = c("always"))
 sum(table(Frijol$SuperficieConSanidadVegetal, useNA = c("always")))
 
#Por el método de imputación de sustitución por media remplaza los valores “NA”
 #de la variable “Superficie Con Sanidad Vegetal”.
 
 media <- mean(Frijol$SuperficieConSanidadVegetal, na.rm = T)
 
 #remplazar na con la media
 Frijol$SuperficieConSanidadVegetal <-replace_na(Frijol$SuperficieConSanidadVegetal, media)
 
 
