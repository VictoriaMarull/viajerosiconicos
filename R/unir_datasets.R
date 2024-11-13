#' Unir datasets
#'
#' @param ids_estaciones ponemos los id de las estaciones
#'
#'
#' @examples
#' #' Definir los IDs de las estaciones
#' ids_estaciones <- c("NH0046", "NH0098", "NH0437", "NH0472", "NH0910")
#' #Llamar a la funcion para unir los datasets
#' dataset_completo <- unir_datasets(ids_estaciones)

#'
#' @return devuelve los datasets unidos
#'
#' @export
unir_datasets <- function(ids_estaciones) {
  # Inicializamos un dataframe vacio
  dataset_completo <- data.frame()

  # Iteramos sobre los IDs de las estaciones
  for (id in ids_estaciones) {
    datos <- lectura_datos(id)  # Usamos tu funcion para leer cada dataset
    dataset_completo <- rbind(dataset_completo, datos)  # Unimos los datos en dataset_completo
  }

  return(dataset_completo)  # Devolvemos el dataframe combinado
}

