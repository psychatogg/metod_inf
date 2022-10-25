## TAREA 1
## 
## Fecha de entrega: 
##     Miércoles, 2 de noviembre de 2022, hasta las 23:55, en la entrega 
##     correspondiente del Campus Virtual
##     
## Nombre del archivo a entregar: 
##     T1_Apellido1_Apellido2.R


## RECUERDA: si no ves adecuadamente el archivo (acentos y demás) vuelve a 
##           cargarlo mediante 'File/Reopen with Encoding' y elige 'UTF-8'

## Conviene comenzar con el espacio de trabajo limpio

rm(list = ls())





## Ejercicio 1 [4 puntos] ----------------------------------------------------- 
## 
## 1. Lee el archivo adjunto 'datos.xlsx' y almacénalo en el data frame 'df'.  
##                                                               [1.5 puntos]
##
setwd("C:\\Gdrive 1\\Uni\\Master\\Metod_inf\\Tareas\\T1\\")

df <- read.csv("datos.csv",sep = ";")


## 2. Selecciona los casos con una edad superior a 50 años y guárdalos en un
##    data frame de nombre 'df_50'.                                 [1 punto]

df_50 <- as.data.frame(df$edad[df$edad > 50])



## 3. Guarda el data frame 'df_50' en un archivo de R ('datos_50.RData') en la
##    carpeta 'Escritorio' de tu usuario de dos formas: utilizando una ruta 
##    relativa, y usando una ruta absoluta.                      [1.5 puntos]

# Ruta absoluta

save(df_50, file = "C:\\Users\\Enter_username\\Desktop\\df_50.RData")


# Ruta relativa

save(df_50, file = "..\\..\\..\\..\\..\\..\\Users\\Enter_Username\\Desktop\\df_50.RData")








## Ejercicio 2 [2 puntos] ----------------------------------------------------- 
## 
## Queremos sumar todos los elementos del vector v, MENOS el último, por lo que 
## usamos el siguiente código. ¿Es correcto? Contesta 'sí' o 'no' y explica por 
## qué.

v <- c(2, 7, 1, 4)
sum(v[1:length(v) - 1])



## Probando:

v[1:length(v) - 1]


## Observamos que, en cuanto a resultados, es equivalente a:



v[1:(length(v) - 1)]



## Sin embargo, el proceso es diferente; en el primer caso se está restando 1 
## tanto al primer índice (por lo que resulta siendo 0) como a la longitud de v,
## por lo que al aplicar sum, obtenemos la suma de los valores contenidos desde
## el índice 0 (vacío) hasta el del penúltimo. A pesar de la igualdad de resultados, no
## es la opción correcta, ya que puede dar lugar a combinaciones de índices 
## positivos y negativos (exclusiones) al restar números más negativos, como 
## veremos en el siguiente apartado.

## En el segundo caso, al aplicar sum, sumamos desde el valor contenido en el
## índice 1 hasta el contenido en el penúltimo. Esta sería la correcta.








## Ahora queremos sumar todos los elementos del vector v, menos los DOS últimos.
## ¿Qué opinas?


## Probando: 
v[1:length(v) - 2]


## Obtenemos el error "only 0's may be mixed with negative subscripts", ya que,
## al igual que en el caso anterior, restamos tanto al length como al índice 1,
## resultando en un vector que comprende los valores desde el índice -2 hasta
## el 2, lo cual no tiene sentido, ya que excluyes -2 al mismo tiempo que lo 
## incluyes.


## Al igual que en el anterior caso, la forma correcta sería: 

v[1:(length(v) - 2)]






## Ejercicio 3 [4 puntos] ----------------------------------------------------- 
## 
# Construid la función `ec2grado()`, que resuelva la ecuación de segundo grado 
# ax2 + bx + c = 0, con 
#   * tres argumentos de entrada: correspondientes a los coeficientes a, b y c;
#   * un objeto de salida: un vector con el/los resultados (una solución, 
#     dos o ninguna).




# Pruebas
ec2grado(4, 4, 0)  # dos soluciones
ec2grado(1, -2, 1) # una solución
ec2grado(4, 2, 1)  # sin solución

