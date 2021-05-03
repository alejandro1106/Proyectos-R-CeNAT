# Ejercicios 4
# Autor: Alejandro Rodríguez Badilla
# Fecha: 27 de abril, 2021

# Ejercicio 1

# Se carga la librería dplyr
library(dplyr)

# Se imprime el índice de las observaciones con agegp == 75+ del dataframe esoph
n = length(esoph$agegp)
for(i in 1:88){
  if (esoph$agegp[[i]] == as.ordered("75+")) {
    print(paste0('agegp == 75+ para la observación:',i))
  }
}

# Ejercicio 2

# Se crea un ciclo que imprime los números del 1 al 10
x <- 1:10
i <- 1
while (i <=10) {
  print(x[i])
  i <- i+1
}

# Ejercicio 3

# Se crea un dataframe filtrando los valores agegp == "75+" en el dataframe esoph
datos_filtrados <- esoph %>% filter(agegp == "75+")

# Se imprimen las columnas ncases y ncontrols del dataframe datos_filtrados
m = nrow(datos_filtrados)
for (i in 1:m){
  print(c(i,datos_filtrados$ncases[i],datos_filtrados$ncontrols[i]))
}

# Ejercicio 4

# Se crea una función que multiplica un número por 5
multiplicarCinco <- function(numero){
  r <- numero*5
  return(r) 
}

# Se define una variable numérica a y se multiplica por 5
a <- 5
a <- multiplicarCinco(a)
a

# Se define un vector, se multiplica por 5 y se define otro vector con el resultado
vectorA <- 1:15
vectorB <- multiplicarCinco(vectorA)
print(vectorA)
print(vectorB)