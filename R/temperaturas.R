#' Temperaturas anuales
#'
#' @param dataset Un dataframe con los datos meteorologicos historicos
#' @param anio_usuario Un valor numerico o caracter correspondiente al anio para el cual se desea obtener
#' las diferentes temperaturas anuales
#'
#' @return esta funcion devuelve el dia mas calido del anio con su temperatura maxima
#' junto al dia mas frio del anio con su temperatura minima

#'
#' @examples
#' temperaturas(dataset_completo, 2011)
#'
#' @export
temperaturas <- function(dataset, anio_usuario) {
  dataset$fecha <- as.Date(dataset$fecha)  #convertimos la columna fecha a tipo Date

  #filtramos los datos por el anio ingresado por el usuario
  dataset_filtrado <- dataset %>%
    dplyr::filter(format(fecha, "%Y") == anio_usuario)  # Filtrar por el anio

  #verificamos si hay datos para ese anio
  if (nrow(dataset_filtrado) == 0) {
    stop("No se encontraron datos para el anio ingresado.")
  }

  #obtenemos el dia mas calido y el dia mas frio del anio
  dia_mas_calido <- dataset_filtrado$fecha[which.max(dataset_filtrado$temperatura_abrigo_150cm)]
  temperatura_maxima <- max(dataset_filtrado$temperatura_abrigo_150cm, na.rm = TRUE)

  dia_mas_frio <- dataset_filtrado$fecha[which.min(dataset_filtrado$temperatura_abrigo_150cm)]
  temperatura_minima <- min(dataset_filtrado$temperatura_abrigo_150cm, na.rm = TRUE)


  resultado <- data.frame(
    Anio = anio_usuario,
    Dia_Mas_Calido = dia_mas_calido,
    Temperatura_Maxima = temperatura_maxima,
    Dia_Mas_Frio = dia_mas_frio,
    Temperatura_Minima = temperatura_minima
  )

  return(resultado)
}
