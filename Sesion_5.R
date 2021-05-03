# Sesión 5

# Ejercicio 1

# Se define la matriz edades
edades <- matrix(seq(15),nrow = 3,ncol = 5)

# Se suman los valores de la matriz edades por filas
apply(edades, 1, sum)

# Ejercicio 2

#Datos
data("ToothGrowth")

# Del dataframe ToothGrowth se obtiene el largo máximo para OJ y VC 
tapply(ToothGrowth$len, ToothGrowth$supp, max)

# Ejercicio 3

# Se crea un dataframe a partir del archivo DATA.csv
dat <- read.csv("DATA.csv")

# Se calcula el valor mayor, menor, promedio y desviación estándar de las columnas Edad, Peso y 
# Altura del dataframe dat, ignorando los valores faltantes NA
apply(dat[,5:7],2,max, na.rm = T)
apply(dat[,5:7],2,min, na.rm = T)
apply(dat[,5:7],2,mean, na.rm = T)
apply(dat[,5:7],2,sd, na.rm = T)
