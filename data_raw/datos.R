#Este es un script para leer, limpiar y manipular datos
#inventamos un dataframe

datos <- data.frame(a = sample(1000),
                    b= sample(1000)*5)

#luego uso la funcion de usethis::use_data("datos") lo cual guarda el archivo
#comprimido en la carpeta datos

usethis::use_data("datos")
