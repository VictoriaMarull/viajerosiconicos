#' Crear grafico de precipitacion pluviometrica
#'
#' @param dataset Un dataframe con los datos meteorológicos históricos
#' @param anio Un valor numerico o caracter correspondiente al año para el cual se desea obtener el grafico
#'
#' @return esta funcion devuelve un grafico con la precipitacion pluviometrica anual
#'
#' @examples
#' grafico_precipitacion(dataset_completo, 2010)
#'
#' @export
grafico_precipitacion <- function(dataset, anio) {
  #nos aseguramos de que la columna este en formato date
  dataset$fecha <- as.Date(dataset$fecha)

  #filtramos los datos por el año ingresado y eliminamos valores nulos en la columna precipitacion_pluviometrica
  datos_filtrados <- dataset %>%
    dplyr::filter(format(fecha, "%Y") == as.character(anio)) %>%
    dplyr::filter(!is.na(precipitacion_pluviometrica))

  #filtramos los dias con precipitacion mayor a 0
  datos_con_precipitacion <- datos_filtrados %>%
    dplyr::filter(precipitacion_pluviometrica > 0)

  #graficamos
  ggplot2::ggplot(datos_con_precipitacion, ggplot2::aes(x = fecha)) +
    ggplot2::geom_bar(stat = "count", fill = "skyblue") +
    ggplot2::labs(title = paste("Cantidad de agua en mm sobre m2 por anio", anio),
                  x = "Fecha",
                  y = "Número de días con precipitación") +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 90, hjust = 1))  # Rotar las fechas del eje X
}

