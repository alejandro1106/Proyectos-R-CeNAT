# Ejercicios 2
# Autor: Alejandro Rodríguez Badilla
# Fecha: 25 de abril, 2021

# Ejercicio 1

# Se crea un dataframe
vacaciones <- data.frame(Lugar = c("Playa","Montaña"),
                         Visitas = c(15,23))

# Se crea un vector que contenga dos valores de tipo texto y se llame Comidas
Comidas <- c('Pizza','Hamburguesa')

# Se añade el vector comidas al dataframe vacaciones
vacaciones['Comidas'] <- Comidas

# Ejercicio 2

# Se muestra la cantidad de columnas del dataframe iris
ncol(iris)

# Se muestra la cantidad de filas del dataframe iris
nrow(iris)

# Se muestran los tipos de las columnas del dataframe iris
str(iris)

# Se muestran las primeras 15 observaciones del dataframe iris
head(iris,15)

# Ejercicio 3

# Se crea un nuevo dataframe de las filas de la especie setosa en iris 
iris_setosa <- subset(iris, Species == 'setosa')

# Ejercicio 4

# Se crea un nuevo dataframe de 15 observaciones aleatorias sin reemplazo en iris_setosa 
iris_muestra_setosa <- iris_setosa[sample(50, 15, replace = F),]

# Ejercicio 5

# Se imprime la fila 13 del dataframe iris_muestra_setosa
print(iris_muestra_setosa[13,])

# Se imprime la columna Sepal.Width del dataframe iris_muestra_setosa
print(iris_muestra_setosa$Sepal.Width)

# Se elimina la primera fila del dataframe iris_setosa
iris_setosa[-1,]
