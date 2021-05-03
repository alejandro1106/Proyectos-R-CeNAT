# Ejercicios 3
# Autor: Alejandro Rodríguez Badilla
# Fecha: 1 de mayo, 2021

# Ejercicio 1

# Se carga la librería dplyr
library(dplyr)

# Se crea un dataframe con las columnas Tree y age del dataframe Orange 
Orange_Age <- data.frame(Orange$Tree, Orange$age)

# Ejercicio 2

# Se cambia el nombre de la comluna age a Age
Orange_Age <- Orange_Age %>% rename(Age = Orange.age)
 
# Ejercicio 3

# Se filtran las observaciones para Age < 1200 y  se ordena ascendentemente
Orange_Age <- Orange_Age %>% filter(Age < 1200) %>% arrange(Age)

# Ejercicio 4

# Se calcula el promedio de edades para los dataframes Orange y Orange_Age
summarise(Orange, mean(age))
summarise(Orange_Age, mean(Age))

# Ejercicio 5

# Del dataframe Orange se calcula el promedio de la columna circumference agrupado 
# por la columna Tree
summarise(group_by(Orange, Tree), mean(circumference))
