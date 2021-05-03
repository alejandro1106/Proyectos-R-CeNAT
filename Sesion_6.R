# Ejercicio 1

library(dplyr)

# Se crea un dataframe y se filtra según el continente Europa
gapminder <- read.csv("gapminder-FiveYearData.csv") 
nueva <- gapminder %>% filter(continent=="Europe")

# Se escribe un archivo csv
write.table(nueva, file="ejemplo1.csv")

# Se lee el archivo csv escrito
nueva= read.table("ejemplo1.csv")
head(nueva)

