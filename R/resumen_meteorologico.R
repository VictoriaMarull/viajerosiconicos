#' Resumen meteorologico anual
#'
#' @param dataset Un dataframe con los datos meteorológicos historicos
#' @param anio_usuario Un valor numerico o caracter correspondiente al año para el cual se desea obtener el resumen
#'
#' @return esta funcion devuelve diferentes valores con diferentes fenomenos meteorologicos anuales
#'
#' @examples
#' resumen_meteorologico(dataset_completo, anio_usuario = 1973)
#'
#' @export
resumen_meteorologico <- function(dataset, anio_usuario) {
  dataset$fecha <- as.Date(dataset$fecha)

  #filtramos los datos por año
  dataset_filtrado <- dataset %>%
    dplyr::filter(format(fecha, "%Y") == anio_usuario)

  # verificamos si hay datos para ese año
  if (nrow(dataset_filtrado) == 0) {
    stop("No se encontraron datos para el año ingresado.")
  }

  #resumen condiciones meteorologicas
  resumen <- dataset_filtrado %>%
    dplyr::summarize(
      temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE),  # Promedio de temperatura
      temperatura_maxima = max(temperatura_abrigo_150cm_maxima, na.rm = TRUE),  # Máxima temperatura
      temperatura_minima = min(temperatura_abrigo_150cm_minima, na.rm = TRUE),  # Mínima temperatura
      precipitacion_total = sum(precipitacion_pluviometrica, na.rm = TRUE),  # Total de precipitación
      granizo_total = sum(granizo, na.rm = TRUE),  # Total de días con granizo
      horas_frio_total = sum(horas_frio, na.rm = TRUE)  # Total de horas de frío
    )


  return(resumen)
}


