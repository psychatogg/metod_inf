## TAREA 2
## 
## Fecha de entrega: 
##     Jueves, 22 de diciembre de 2022, hasta las 23:59, en la entrega 
##     correspondiente del Campus Virtual
##     
## Nombre del archivo a entregar: 
##     T1_Apellido1_Apellido2.R


## RECUERDA: si no ves adecuadamente el archivo (acentos y demás) vuelve a 
##           cargarlo mediante 'File/Reopen with Encoding' y elige 'UTF-8'

## CÁLCULO DE LA NOTA
## Los ejercicios suman 13 puntos. Haced los que queráis, sabiendo que
##   * Si suman 10 o menos como nota máxima posible, la nota corresponde a 
##     los puntos obtenidos.
##   * Si suman más de 10 como nota máxima posible, se reescalan los puntos 
##     obtenidos a la escala de 0 - 10.
##   * Conviene borrar el/los ejercicio/s no resueltos, no vaya a ser que... 
##     y tengamos lío.



## Ejercicio 1 [3 puntos] ------------------------------------------- 
## 
## Construye la función anon_DNI(), que recibe un vector de caracteres con DNIs y devuelve otro vector del mismo tipo con los DNIs anonimizados (según se indica en el PRIMER PUNTO de las instrucciones de la AEPD en el archivo comprimido adjunto --y sólo el primer punto).  

# Dado v
v <- c("12345678A", "2345678B")
# Devuelva
c("***4567**", "***4567**")
# Véase que corrige cuando falta un cero inicial (omitido) en el segundo caso

anon_DNI <- function(dni) {
  dni_mod <- c()
  for (i in dni) {
    if (nchar(i) < 9) {
      i <- paste0("0",i)
    } 
    dni_mod <- append(dni_mod,i)
  }
  substr(dni_mod,1,3) <- "***"
  substr(dni_mod,8,9) <- "**"
  return(dni_mod)
  
}

# Prueba
x <- c("12345678A", "2345678B")
anon_DNI(x)
anon_DNI(12345678)





## Ejercicio 2 [1 punto] ------------------------------------------------------ 
## 
## ¿Difieren los archivos datos1.csv y datos2.csv? Responde simplemente sí o no, e incluye el código que permite comprobarlo.  

datos_1 <- read.csv("E:\\GDrive1\\Uni\\Master\\Metod_inf\\Tareas\\T2\\datos1.csv")
datos_2 <- read.csv("E:\\GDrive1\\Uni\\Master\\Metod_inf\\Tareas\\T2\\datos2.csv")
identical(datos_1,datos_2)

## Sí difieren


## Ejercicio 3 [2 puntos] -----------------------------------------------------  
## Indica, para el archivo datos1.csv anterior, 
##  * cuántos sujetos tienen algún dato perdido, y 
##  * cuántas variables tienen algún dato perdido

## Sujetos

sum(apply (datos_1, MARGIN = 1,  function(x) anyNA(x)))

## Variables

sum(sapply (datos_1, function(x) anyNA(x)))


## Ejercicio 4 [4 puntos] ----------------------------------------------------- 
## 
## La lista 'lista_t' (en los datos adjuntos) contiene los resultados de 8 pruebas t intergrupo (entre los subgrupo A y B). Construye un data frame, df_t, extrayendo los valores necesarios, con las siguientes columnas:
## * nombre: nombre de la variable
## * media_A: media para el grupo A
## * media_B: media para el grupo B
## * t: valor del estadístico t,
## * gl: grados de libertad
## * p: probabilidad asociada

load("E:\\GDrive1\\Uni\\Master\\Metod_inf\\Tareas\\T2\\lista_t.rda")


nombre <- names(lista_t)
list_flat <- sapply(lista_t, function(x) unlist(x))


media_A <- list_flat["estimate.mean in group A",]
media_B <- list_flat["estimate.mean in group B",]
t <- list_flat["statistic.t",]
gl <- list_flat["parameter.df",]
p <-  list_flat["p.value",]


df_t <- as.data.frame(cbind(nombre, media_A,media_B,t,gl,p)) 


## Ejercicio 5 [3 puntos] ----------------------------------------------------- ## 
## Necesito la función 'intercala()', que recibe como argumentos dos data frames, con idéntica estructura y número de casos, y devuelve un data frame con la misma estructura pero intercalando las filas de ambos.                          

# Ejemplo: dados como primer y segundo argumentos, respectivamente,
df1 <- data.frame(id = c(1, 2, 3), 
                  v1 = c(10, 20, 30),
                  v2 = c(100, 200, 300))
df2 <- data.frame(id = c(4, 5, 6), 
                  v1 = c(15, 25, 35),
                  v2 = c(150, 250, 350))
# debemos obtener
df <- data.frame(id = c(1, 4, 2, 5, 3, 6), 
                 v1 = c(10, 15, 20, 25, 30, 35),
                 v2 = c(100, 150, 200, 250, 300, 350))
# Controla que los argumentos de entrada sean data frames.




intercala <- function (df1,df2) {
  switch(class(df1)[1],
         data.frame = print("df1 es data frame. Continuamos."),
         return("Error: df1 no es data frame.")
  )
  
  switch(class(df2)[1],
         data.frame = print("df2 es data frame. Continuamos."),
         return("Error: df2 no es data frame.")
  )
  
  df <- data.frame()
  ##df1 <- df1[rep(1:nrow(df1), each = 2), ]
  for (i in 1:nrow(df1)) {
    
    df[i,] = df1[i,]
    df[i+1,] =df2[i,]
  }
  return(df)
}


# Pruebas
intercala(df1, df2) 

df1 <- matrix()
df2 <- array()
