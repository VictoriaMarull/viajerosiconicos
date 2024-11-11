#' Guia de supervivencia para viajeros en el tiempo
#'
#' @param fecha el usuario debe ingresar la fecha a la cual quiere viajar
#'
#' @return te devuelve un outfit en base a la temperatura del dia
#'
#' @examples
#' guia_de_supervivencia("2011-04-25")
#'
#' @export
guia_de_supervivencia <- function(fecha) {
  # Filtrar los datos para esa fecha
  datos_dia <- subset(dataset_completo, fecha == fecha)  # Filtra directamente por fecha

  # Verificar si se encontraron datos para esa fecha
  if (nrow(datos_dia) == 0) {
    stop("No se encontraron datos para esta fecha.")
  }

  # Calcular la temperatura promedio del dia
  temperatura_promedio <- mean(datos_dia$temperatura_abrigo_150cm, na.rm = TRUE)

  # Definir el outfit en base a la temperatura promedio
  if (temperatura_promedio < 15) {
    outfit <- "un tapado de paño, bufanda, guantes en tonos rojizos y botas altas de cuero."
  } else if (temperatura_promedio >= 15 && temperatura_promedio < 25) {
    outfit <- "sueter de hilo con colores pastel y unos jeans sueltos"
  } else {
    outfit <- "una blusa blanca ligera, bermudas de jean con roturas y sandalias de cuero claro"
  }

  # Verificar las horas de frio
  horas_frio <- sum(datos_dia$horas_frio, na.rm = TRUE)

  # Devolver el outfit sugerido y la información sobre las horas de frio
  return(paste("Para la fecha", fecha, "con una temperatura promedio de", round(temperatura_promedio, 2), "°C",
               "y", horas_frio, "horas de frio, te sugerimos:", outfit))
}

