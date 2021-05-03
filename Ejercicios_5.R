# Ejercicios 5
# Autor: Alejandro Rodríguez Badilla
# Fecha: 2 de mayo, 2021

# Ejercicio 1

library(dplyr)

# Se calcula el promedio de las columnas del dataframe swiss
apply(swiss, 2, mean)

# Ejercicio 2

# Se extrae la fila 2 del dataframe swiss
delemont <- swiss[2,]

# Se crea una función para convertir los porcentajes del dataframe delemont a 
# número de personas considerando que la población de Delemont es de 25000 personas
numeroPersonas <- function(P) {
  N <- 25000*P/100
  return(N)
} 

# Se le aplica la función creada a delemont por medio de lapply
l_delemont <- lapply(delemont, numeroPersonas)

# Se le aplica la función creada a delemont por medio de sapply
s_delemont <- sapply(delemont, numeroPersonas)

# Se compara la estructura de los datos resultantes
str(l_delemont)
str(s_delemont)

# Ejercicio 3

# Se obtiene el promedio de mortalidad infantil según educación
tapply(swiss$Infant.Mortality, swiss$Education, mean)
