# Función para graficar los días con precipitación
grafico_precipitacion <- function(dataset, anio) {
  # Asegurarse de que la columna fecha esté en formato Date
  dataset$fecha <- as.Date(dataset$fecha)

  # Filtrar los datos por el año ingresado y eliminar valores nulos en la columna precipitacion_pluviometrica
  datos_filtrados <- dataset %>%
    dplyr::filter(format(fecha, "%Y") == as.character(anio)) %>%
    dplyr::filter(!is.na(precipitacion_pluviometrica))  # Eliminar valores nulos

  # Filtrar los días con precipitación mayor a 0
  datos_con_precipitacion <- datos_filtrados %>%
    dplyr::filter(precipitacion_pluviometrica > 0)  # Filtrar días con precipitación

  # Crear el gráfico de barras
  ggplot2::ggplot(datos_con_precipitacion, ggplot2::aes(x = fecha)) +
    ggplot2::geom_bar(stat = "count", fill = "skyblue") +
    ggplot2::labs(title = paste("Cantidad de agua en mm sobre m2 por anio", anio),
                  x = "Fecha",
                  y = "Número de días con precipitación") +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = ggplot2::element_text(angle = 90, hjust = 1))  # Rotar las fechas del eje X
}
#grafico_precipitacion(dataset_completo, 2010)
