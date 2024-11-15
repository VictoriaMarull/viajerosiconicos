#' Resumen meteorologico anual
#'
#' Esta funcion recibe un conjunto de datos meteorologicos y un ano especifico para el cual se calcula un resumen
#' con diferentes fenomenos meteorologicos anuales, incluyendo la temperatura media, maxima y minima, la precipitacion
#' total, el total de dias con granizo, y el total de horas con frio.
#'
#' @param dataset Un dataframe con los datos meteorologicos historicos
#' @param anio_usuario Un valor numerico o caracter correspondiente al anio para el cual se desea obtener el resumen
#'
#' @return Un dataframe con el resumen de las condiciones meteorologicas del anio solicitado. Las columnas devueltas son:
#'         - `temperatura_media`: La temperatura media anual medida a 150 cm de altura.
#'         - `temperatura_maxima`: La temperatura maxima anual medida a 150 cm de altura.
#'         - `temperatura_minima`: La temperatura minima anual medida a 150 cm de altura.
#'         - `precipitacion_total`: La precipitacion total anual en milimetros.
#'         - `granizo_total`: El total de dias con granizo en el anio.
#'         - `horas_frio_total`: El total de horas con frio en el anio.
#'
#' @examples
#' resumen_meteorologico(dataset_completo, anio_usuario = 1973)
#'
#' @export
resumen_meteorologico <- function(dataset, anio_usuario) {
  dataset$fecha <- as.Date(dataset$fecha)

  #filtramos los datos por anio
  dataset_filtrado <- dataset %>%
    dplyr::filter(format(fecha, "%Y") == anio_usuario)

  # verificamos si hay datos para ese anio
  if (nrow(dataset_filtrado) == 0) {
    stop("No se encontraron datos para el anio ingresado.")
  }

  #resumen condiciones meteorologicas
  resumen <- dataset_filtrado %>%
    dplyr::summarize(
      temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE),  # Promedio de temperatura
      temperatura_maxima = max(temperatura_abrigo_150cm_maxima, na.rm = TRUE),  # Maxima temperatura
      temperatura_minima = min(temperatura_abrigo_150cm_minima, na.rm = TRUE),  # Minima temperatura
      precipitacion_total = sum(precipitacion_pluviometrica, na.rm = TRUE),  # Total de precipitación
      granizo_total = sum(granizo, na.rm = TRUE),  # Total de dias con granizo
      horas_frio_total = sum(horas_frio, na.rm = TRUE)  # Total de horas de frio
    )


  return(resumen)
}


