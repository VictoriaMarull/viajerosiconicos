#' Temperaturas anuales
#' Esta funcion recibe un conjunto de datos meteorologicos y un anio especifico para el cual se calcula:
#' el dia mas calido (con su temperatura maxima) y el dia mas frio (con su temperatura minima).
#' El analisis se realiza sobre las temperaturas de abrigo medidas a 150 cm de altura.
#'
#' @param dataset Un dataframe con los datos meteorologicos historicos
#' @param anio_usuario Un valor numerico o carácter correspondiente al año para el cual se desea obtener
#'                     las temperaturas anuales, el día más cálido y el día más frío.
#'
#' @return Un dataframe con el anio solicitado, el dia mas calido con su temperatura maxima y el dia mas frio
#'         con su temperatura minima. Las columnas devueltas son:
#'         - `Anio`: El ano para el cual se realizo el calculo.
#'         - `Dia_Mas_Calido`: El dia mas calido del ano.
#'         - `Temperatura_Maxima`: La temperatura maxima del dia mas calido.
#'         - `Dia_Mas_Frio`: El dia mas frio del ano.
#'         - `Temperatura_Minima`: La temperatura minima del dia mas frio.
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
