#' Crear grafico de precipitacion pluviometrica
#'
#' Esta funcion genera un grafico de barras que muestra la cantidad de dias con precipitacion pluviometrica en un ano especifico.
#' El grafico se basa en los datos de precipitacion almacenados en el dataframe proporcionado, filtrando los datos para el
#' ano solicitado y solo mostrando los dias con precipitacion mayor a 0.
#'
#' @param dataset Un dataframe con los datos meteorologicos historicos
#' @param anio Un valor numerico o caracter correspondiente al año para el cual se desea obtener el grafico
#'
#' @return Esta funcion devuelve un grafico de barras donde el eje x muestra las fechas de los dias con precipitacion,
#'         y el eje y muestra el numero de dias con precipitacion.
#'
#' @examples
#' grafico_precipitacion(dataset_completo, 2010)
#'
#' @export
grafico_precipitacion <- function(dataset, anio) {
  #nos aseguramos de que la columna este en formato date
  dataset$fecha <- as.Date(dataset$fecha)

  #filtramos los datos por el anio ingresado y eliminamos valores nulos en la columna precipitacion_pluviometrica
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
                  y = "Numero de dias con precipitacion") +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 90, hjust = 1))  # Rotar las fechas del eje X
}

