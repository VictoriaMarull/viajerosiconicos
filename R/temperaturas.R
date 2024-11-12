temperaturas <- function(dataset, anio_usuario) {
  dataset$fecha <- as.Date(dataset$fecha)  #convertimos la columna fecha a tipo Date

  #filtramos los datos por el año ingresado por el usuario
  dataset_filtrado <- dataset %>%
    dplyr::filter(format(fecha, "%Y") == anio_usuario)  # Filtrar por el año

  #verificamos si hay datos para ese año
  if (nrow(dataset_filtrado) == 0) {
    stop("No se encontraron datos para el año ingresado.")
  }

  #obtenemos el dia mas calido y el dia más frio del año
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
