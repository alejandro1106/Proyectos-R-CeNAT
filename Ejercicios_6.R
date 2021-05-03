# Ejercicios 1
# Autor: Alejandro Rodríguez Badilla
# Fecha: 25 de abril, 2021

# Ejercicio 1

# Se crea un vector de elementos numéricos.
u <- c(5,4,9,7,3)

# Se crea un vector de elementos de texto.
v <- c('a','b','c','d','e')

# Se crea un vector de elementos numéricos y de texto.
w <- c(5,8,'s',7,'e','b')

# Se revisa la estructura de cada uno de los vectores 
str(u)
str(v)
str(w)

# Ejercicio 2

# Se crea el vector x
x <- c(a = 1, b = 2, c= 3)

# Se agrega un elemento d=4 al final del vector x
x <- c(x, d=4) 

# Se obtienen los valores de a y d
x[c('a','d')]

# Ejercicio 3

# Se crea una lista con un valor booleano , uno de texto y un vector con los números del 1 al 10

l <- list(T,'a',1:10)

# Se accede al valor en la posición 3 del vector de números en la lista
l[[3]][3]

# Ejercicio 4

# Se crean tres vectores  
vector_a <- 1:9
vector_b <- 10:18
vector_c <- 19:27

# Se crean tres matrices de 3 x 3 con los valores de los vectores
matriz_a <- matrix(vector_a, 3,3)
matriz_b <- matrix(vector_b, 3,3)
matriz_c <- matrix(vector_c, 3,3)

# Se crea un arreglo de datos a partir de las tres matrices anteriores
arreglo <- array(c(matriz_a,matriz_b,matriz_c),dim = c(3,3,3))

# Se extrae el primer elemento de la tercera capa
arreglo[[1,1,3]]

# Ejercicio 5

# Se crea un data frame f con tres columnas
a <- c(1,2,3)
b <- c("Ayer","Hoy","Mañana")
c <- c(T,T,F)
f <- data.frame(A = a, B = b, C = c)

# Se crea un data frame g que contiene las columnas A y B del data frame f
g <- data.frame(f[-3])

# Se cambian los nombres de las columnas del dataframe g por Visitantes y Momento
names(g) <- c('Visitantes','Momento')