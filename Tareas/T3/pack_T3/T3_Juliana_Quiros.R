## TAREA 3
## 
## Fecha de entrega: 
##     Jueves, 19 de enero de 2023, hasta las 23:59, en la entrega 
##     correspondiente del Campus Virtual
##     
## Nombre del archivo a entregar: 
##     T3_Apellido1_Apellido2.R
## (Si se hace el ejercicio 3, atiéndanse a las instrucciones de nombrado y
## empaquetado)


## RECUERDA: si no ves adecuadamente el archivo (acentos y demás) vuelve a 
##           cargarlo mediante 'File/Reopen with Encoding' y elige 'UTF-8'


########################### PLANTEAMIENTO GENERAL #############################

# La Tarea 3 consiste en extensiones de algunos ejercicios de la Tarea 2. 
# Se pueden hacer varios de los apartados más básicos hasta completar 10 puntos o se pueden enfrentar un par de problemas complejos de principio a fin. Mira el apartado de 'Pruebas' para comprender mejor la salida que se espera obtener.
# Se recomienda especialmente el ejercicio 3 como forma de conocer Quarto, un editor que os va a resultar muy útil.
# Con esto pretendo combinar tareas accesibles para todos los niveles de la asignatura junto con algunos "retos" algo más complejos, realistas e interesantes.
# Espero que aprendáis e, incluso, disfrutéis.

###############################################################################





## Ejercicio 1 [Entre 1 y 8 puntos] ------------------------------------------- 
## 
## En la Tarea 2 se extrajeron ciertas partes de una lista (ej. 4) y se creó la función intercala() (ej. 5).
## Ahora, en éste y en algunos de los ejercicios siguientes, se trata de utilizar todo ello, y más cosas, para lograr una tabla, en última instancia, en pdf o HTML (véanse los ejemplos en el archivo Ejemplos.html, para tener una idea exacta del resultado esperado).
## Por supuesto, hay varias partes y no hay por qué hacerlas todas. Aquí veremos 4 partes de las muchas que hay.
## 
## Parte 1: [2 puntos] ·······························
## Usa el procedimiento utilizado en el Ejercicio 4 de la Tarea 2 para crear la función extrae_t(). Esta función sólo servirá para listas que contengan estas pruebas, y sólo debe extraer los valores especificados en el Ejercicio 4 de T2. Hay que comprobar que el objeto de entrada es una lista, pero no se solicitan más controles.

extrae_t <- function() {

    
}

# Pruebas *****
load("lista_t.rda")
extrae_t(lista_t)  # Correcto
#   nombre media_A media_B     t    gl     p
# 1  var_1   12.07   13.65 -2.03 41.71 0.048
# 2  var_2   12.18   13.28 -1.44 40.68 0.156
# 3  var_3   12.17   13.66 -2.21 47.73 0.032
# 4  var_4   12.42   13.97 -2.13 39.88 0.039
# 5  var_5   11.70   13.75 -2.45 46.56 0.018
# 6  var_6   11.55   13.82 -2.96 44.53 0.005
# 7  var_7   11.74   13.45 -1.90 42.50 0.065
# 8  var_8   12.17   13.05 -1.08 38.40 0.288

extrae_t(1:4)       # Da un warning
# Warning message:
# In extrae_t(1:4) : El objeto de entrada debe ser una lista


## Parte 2: [1 punto] ·······························
## Aplica la función extrae_t() (o aplica el procedimiento directamente si no has hecho la Parte 1) a las listas lista_T1 y Lista_T2, contenidas en el archivo listas_T12.rda, para obtener los data frames df_T1 y df_T2 respectivamente.

# Pruebas *****
load("listas_T12.rda")



## Parte 3: [4 puntos] ·······························
## A partir de la función intercala() del Ejercicio 5 de la Tarea 2, crea la función intercala_2(), que aplicada a los data frames df_T1 y df_T2 devolverá lo que se observa en las pruebas.
## 

# A partir de la Tarea 2, modificada para que se ajuste a esta 
intercala_2 <- function() {

    
    
}

# Pruebas *****
df_T12 <- intercala_2(df_T1, df_T2); df_T12
#   variable medida media_A media_B     t    gl     p
# 1    var_1     X1   12.07   13.51 -2.50 87.17 0.014
# 2    var_1     X2   12.65   14.00 -1.99 88.91 0.050
# 3    var_2     X1   12.10   13.48 -2.49 77.82 0.015
# 4    var_2     X2   12.67   14.10 -2.40 86.62 0.019
# 5    var_3     X1   11.95   13.57 -3.00 81.72 0.004
# 6    var_3     X2   12.40   14.15 -2.87 84.25 0.005
df_T12 <- intercala_2(df_T1, df_T2, c("T1", "T2")); df_T12
#   variable medida media_A media_B     t    gl     p
# 1    var_1     T1   12.07   13.51 -2.50 87.17 0.014
# 2    var_1     T2   12.65   14.00 -1.99 88.91 0.050
# 3    var_2     T1   12.10   13.48 -2.49 77.82 0.015
# 4    var_2     T2   12.67   14.10 -2.40 86.62 0.019
# 5    var_3     T1   11.95   13.57 -3.00 81.72 0.004
# 6    var_3     T2   12.40   14.15 -2.87 84.25 0.005


## Parte 4: [1 punto] ·······························
##  Guarda df_T12 en el archivo 'df_T12.rda'.




## Ejercicio 2 [3 o 7 puntos] ----------------------------------------------------- 
## 
## En este caso se trata de completar (o ampliar) el ejercicio anterior y construir un data frame similar, pero partiendo de TRES o más listas en lugar de dos.  
## 
## Hay DOS OPCIONES: ELIGE SÓLO UNA
## 
## OPCIÓN 1: [3 puntos]
## Ello requiere crear una nueva función, intercala_3(), y aplicarla a los data frames obtenidos para los tiempos T1, T2 y T3 (ver archivo df_T123.rda).

intercala_3 <- function() {

    
    
}

# Pruebas *****
load("df_T123.rda")

intercala_3(df_T1, df_T2, df_T3)
#   variable medida media_A media_B     t    gl     p
# 1    var_1     X1   12.07   13.51 -2.50 87.17 0.014
# 2    var_1     X2   12.65   14.00 -1.99 88.91 0.050
# 3    var_1     X3   13.07   14.64 -2.40 90.95 0.018
# 4    var_2     X1   12.10   13.48 -2.49 77.82 0.015
# 5    var_2     X2   12.67   14.10 -2.40 86.62 0.019
# 6    var_2     X3   13.30   14.54 -2.08 88.39 0.040
# 7    var_3     X1   11.95   13.57 -3.00 81.72 0.004
# 8    var_3     X2   12.40   14.15 -2.87 84.25 0.005
# 9    var_3     X3   12.99   14.72 -2.88 89.87 0.005

intercala_3(df_T1, df_T2, df_T3, c("T1", "T2", "T3"))
#   variable medida media_A media_B     t    gl     p
# 1    var_1     T1   12.07   13.51 -2.50 87.17 0.014
# 2    var_1     T2   12.65   14.00 -1.99 88.91 0.050
# 3    var_1     T3   13.07   14.64 -2.40 90.95 0.018
# 4    var_2     T1   12.10   13.48 -2.49 77.82 0.015
# 5    var_2     T2   12.67   14.10 -2.40 86.62 0.019
# 6    var_2     T3   13.30   14.54 -2.08 88.39 0.040
# 7    var_3     T1   11.95   13.57 -3.00 81.72 0.004
# 8    var_3     T2   12.40   14.15 -2.87 84.25 0.005
# 9    var_3     T3   12.99   14.72 -2.88 89.87 0.005



## OPCIÓN 2: [7 puntos]
## Ello requiere crear una nueva función, intercala_N(), y aplicarla a cualquier numero de data frames obtenidos. Pruébala con las listas del archivo df_TN.rda.
## Observa que la función requiere una de dos estrategias:
##  * un argumento (principal) de entrada que contenga todos los data frames, o
##  * un número indeterminado de entradas (principales), cada una un data frame.
## Las salidas de las pruebas ayudan a ver los dos formatos

# En formato de un argumento (una lista, necesariamente)
 
intercala_N <- function() {

    
    
}

# Pruebas *****
load("df_TN.rda")
lista <- list(df_T1, df_T2)
intercala_N(lista)
#   variable medida media_A media_B     t    gl     p
# 1    var_1     X1   12.07   13.51 -2.50 87.17 0.014
# 2    var_1     X2   12.65   14.00 -1.99 88.91 0.050
# 3    var_2     X1   12.10   13.48 -2.49 77.82 0.015
# 4    var_2     X2   12.67   14.10 -2.40 86.62 0.019
# 5    var_3     X1   11.95   13.57 -3.00 81.72 0.004
# 6    var_3     X2   12.40   14.15 -2.87 84.25 0.005

lista <- list(df_T1, df_T2, df_T3, df_T4, df_T5)
intercala_N(lista, "T")
#    variable medida media_A media_B     t    gl     p
# 1     var_1     T1   12.07   13.51 -2.50 87.17 0.014
# 2     var_1     T2   12.65   14.00 -1.99 88.91 0.050
# 3     var_1     T3   13.07   14.64 -2.40 90.95 0.018
# 4     var_1     T4   14.00   14.21 -0.29 87.53 0.773
# 5     var_1     T5   13.89   15.55 -2.50 86.41 0.014
# 6     var_2     T1   12.10   13.48 -2.49 77.82 0.015
# 7     var_2     T2   12.67   14.10 -2.40 86.62 0.019
# 8     var_2     T3   13.30   14.54 -2.08 88.39 0.040
# 9     var_2     T4   14.14   14.35 -0.29 84.88 0.774
# 10    var_2     T5   13.86   15.14 -2.21 92.81 0.030
# 11    var_3     T1   11.95   13.57 -3.00 81.72 0.004
# 12    var_3     T2   12.40   14.15 -2.87 84.25 0.005
# 13    var_3     T3   12.99   14.72 -2.88 89.87 0.005
# 14    var_3     T4   13.57   14.18 -0.82 84.01 0.416
# 15    var_3     T5   14.01   15.09 -2.03 93.30 0.045


# En formato de varios argumentos (varios data frames)
# Para aprender a utilizar los argumentos introducidos mediante ...

intercala_N <- function() {

    
    
}

# Pruebas *****
load("df_TN.rda")
intercala_N(df_T1, df_T2)
#    variable medida media_A media_B     t    gl     p
# 2     var_1     X1   12.07   13.51 -2.50 87.17 0.014
# 3     var_1     X2   12.65   14.00 -1.99 88.91 0.050
# 21    var_2     X1   12.10   13.48 -2.49 77.82 0.015
# 22    var_2     X2   12.67   14.10 -2.40 86.62 0.019
# 31    var_3     X1   11.95   13.57 -3.00 81.72 0.004
# 32    var_3     X2   12.40   14.15 -2.87 84.25 0.005


intercala_N(df_T1, df_T2, df_T3, df_T4, df_T5, "T")
# Error in ...elt(j)[i, ] : incorrect number of dimensions

intercala_N(df_T1, df_T2, df_T3, df_T4, df_T5, nombres = "T")
#    variable medida media_A media_B     t    gl     p
# 1     var_1     T1   12.07   13.51 -2.50 87.17 0.014
# 2     var_1     T2   12.65   14.00 -1.99 88.91 0.050
# 3     var_1     T3   13.07   14.64 -2.40 90.95 0.018
# 4     var_1     T4   14.00   14.21 -0.29 87.53 0.773
# 5     var_1     T5   13.89   15.55 -2.50 86.41 0.014
# 6     var_2     T1   12.10   13.48 -2.49 77.82 0.015
# 7     var_2     T2   12.67   14.10 -2.40 86.62 0.019
# 8     var_2     T3   13.30   14.54 -2.08 88.39 0.040
# 9     var_2     T4   14.14   14.35 -0.29 84.88 0.774
# 10    var_2     T5   13.86   15.14 -2.21 92.81 0.030
# 11    var_3     T1   11.95   13.57 -3.00 81.72 0.004
# 12    var_3     T2   12.40   14.15 -2.87 84.25 0.005
# 13    var_3     T3   12.99   14.72 -2.88 89.87 0.005
# 14    var_3     T4   13.57   14.18 -0.82 84.01 0.416
# 15    var_3     T5   14.01   15.09 -2.03 93.30 0.045



## Ejercicio 3 [4 puntos] ----------------------------------------------------- 
## 
## Continuando con lo anterior, ya sea desde el ejercicio 1 o desde el 2, ahora tenemos que construir el documento en pdf o html. 
## Para ello usaremos 'Quarto', que es bastante más cómodo que Rmarkdown y os conviene conocer. Hay que crear un documento Quarto (.qmd) que genere una simple tabla (véanse los ejemplos en Ejemplo.html). 
## En tal caso, dale el nombre 
## 
##                  T3_Apellido1_Apellido2.rmd
##  
##  lo comprimes junto con éste y lo llamas T3_Apellido1_Apellido2.zip (o la extensión del compresor que sea).
## 
## 
## 






## Ejercicio 4 [Entre 1 y 10 puntos] ------------------------------------------- 
## 
## Construye la función anon_ID(), que recibe un vector de caracteres con cualquier tipo de documento de identificación y devuelve otro vector del mismo tipo con los documentos anonimizados. Hay que seguir las instrucciones de la AEPD (en el archivo adjunto) para los puntos 2º al 5º. La función debe incluir la parte del punto 1º (referido a los DNIs), pero que ya se resolvió en la Tarea2. 
## Se valorará en función de los puntos conseguidos y su dificultad (que varía mucho de una situación a otra). Si se resuelven adecuadamente TODOS los casos (que aparecen en las pruebas), se obtendrán 10 puntos.

library(stringr)

anon_ID <- function(ID) {
	dni_ofus <- character()
	nie_ofus <- character()
	pass_ofus <- character()
	otros1_ofus <- character()
	otros2_ofus <- character()
	otros3_ofus <- character()
	ID_ofus <- character()
	## Fase de detección de tipo de ID
	for(i in ID) {
		## DNIs (empiezan por número, acaban por letra, y aseguro a través de la lista de coincidencias que los de en medio también sean números)
		if(nchar(i) == 9 && str_starts(i,"[0-9]") && str_ends(i,"[A-Z]") && lengths(str_locate_all(i,"[0-9]")) == 16){
			dni_ofus <- append(dni_ofus,i)
		}
		## NIES (empiezan y terminan por letra, y aseguro a través de la lista de coincidencias que los de en medio también sean números)
		else if (nchar(i) == 9 && str_starts(i,"[A-Z]") && str_ends(i,"[A-Z]") && lengths(str_locate_all(i,"[0-9]")) == 14) {
			nie_ofus <- append(nie_ofus,i)
		}
		## Pasaportes (empiezan por letra, terminan por número, y aseguro a través de la lista de coincidencias que los de en medio también sean números)
		else if (nchar(i) == 9 && str_starts(i,"[A-Z]") && str_ends(i,"[0-9]") && lengths(str_locate_all(i,"[0-9]")) == 12)  {
			pass_ofus <- append(pass_ofus,i)
		}
		## Otros 1  (pto 4, al menos 7 dígitos numéricos, sin letras)
		else if (lengths(str_locate_all(i,"[0-9]")) >= 14 && !(str_detect(i,"[A-Z]"))) {
			otros1_ofus <- append(otros1_ofus,i)
		}
		## Otros 2  (pto 4, al menos 7 dígitos numéricos, con letras)
		else if (lengths(str_locate_all(i,"[0-9]")) >= 14 && (str_detect(i,"[A-Z]"))) {
			otros2_ofus <- append(otros2_ofus,i)
		}
		## Otros 3 (Pto 5)
		else if (lengths(str_locate_all(i,"[0-9]")) < 14){
			otros3_ofus <- append(otros3_ofus,i)
		}
	}
	## Fase de ofuscación de dígitos de cada tipo de documento
		## DNIS
		substr(dni_ofus,1,3) <- "***"
		substr(dni_ofus,8,9) <- "**"
		
		## NIEs
		substr(nie_ofus,1,4) <- "****"
		substr(nie_ofus,9,9) <- "*"
		
		## Pasaportes
		substr(pass_ofus,1,5) <- "*****"
		
		
		## Otros 1
		substr(otros1_ofus,1,3) <- "***"
		
		substr(otros1_ofus,8,9) <- "**"
	
		
		## Otros 2 (tengo que saber dónde empiezan las letras para conocer la posición de los números)
		## substr(otros2_ofus,) <- "***"
		
		## substr(otros2_ofus,) <- "**"
		
		## Otros 3
		substr(otros3_ofus,1,5) <- "*****"
		
		
	##Combina todas las IDs
	ID_ofus <- append(ID_ofus,dni_ofus)
	ID_ofus <- append(ID_ofus,nie_ofus)
	ID_ofus <- append(ID_ofus,pass_ofus)
	ID_ofus <- append(ID_ofus,otros1_ofus)
	
	ID_ofus <- append(ID_ofus,otros3_ofus)
	
	return(ID_ofus)
}









# PUNTO 1: Dado un DNI con formato 12345678X, se publicarán los dígitos que en el formato que ocupen las posiciones cuarta, quinta, sexta y séptima. En el ejemplo: ***4567**.


    
# PUNTO 2: Dado un NIE con formato L1234567X, se publicarán los dígitos que en el formato ocupen las posiciones, evitando el primer carácter alfabéticos, cuarta, quinta, sexta y séptima. En el ejemplo: ****4567*.


                
# PUNTO 3: Dado un pasaporte con formato ABC123456, al tener sólo seis cifras, se publicarán los dígitos que en el formato ocupen las posiciones, evitando los tres caracteres alfabéticos, tercera, cuarta, quinta y sexta. En el ejemplo: *****3456.


                
# PUNTO 4: Dado otro tipo de identificación, siempre que esa identificación contenga al menos 7 dígitos numéricos, se numerarán dichos dígitos de izquierda a derecha, evitando todos los caracteres alfabéticos, y se seguirá el procedimiento de publicar aquellos caracteres numéricos que ocupen las posiciones cuarta, quinta, sexta y séptima. Por ejemplo, en el caso de una identificación como: XY12345678AB, la publicación sería: *****4567***
            

    
# PUNTO 5: Si ese tipo de identificación es distinto de un pasaporte y tiene menos de 7 dígitos numéricos, se numerarán todos los caracteres, alfabéticos incluidos, con el mismo procedimiento anterior y se seleccionarán aquellos que ocupen las cuatro últimas posiciones. Por ejemplo, en el caso de una identificación como: ABCD123XY, la publicación sería: *****23XY.


    


# Pruebas *****

anon_ID(c("12345678X",      # Punto 1
          "L1234567X",      # Punto 2 
          "ABC123456",      # Punto 3
          "XY12345678AB",   # Punto 4 
          "ABCD123XY"))     # Punto 5
# [1] "***4567**"    "****4567*"    "*****3456"    "*****4567***" "*****23XY"

## Estos son casos reales (su estructura) de los alumnnos de nuestra Facultad.
anon_ID(c("1234567",
         "A123456",
         "12345678",
         "AB123456",
         "123456789",
         "12345678A",
         "A1234567B",
         "AB1234567",
         "A1BCDEFG2",
         "ABC123456",
         "1234567890",
         "123456789012"))
#  [1] "***4567"      "***3456"      "***4567*"     "****3456"     "***4567**"   
#  [6] "***4567**"    "****4567*"    "*****4567"    "*****EFG2"    "*****3456"   
# [11] "***4567***"   "***4567*****"






## Ejercicio 5 [entre 1 y 8 puntos] ------------------------------------------- 
## 
## En la Tarea 2  ya aparecían los archivos datos1.csv (el de referencia) y datos2.csv. Localiza las 6 diferencias, 
##  * mostrando el código que te ha permitido llegar a esas conclusiones y 
##  * especificando en qué consiste la diferencia QUE MUESTRA EL CÓDIGO. 
## 
## Un punto por cada diferencia encontrada y explicada, aunque hay algunas diferencias más difíciles de encontrar,,, que valen más.                                    



