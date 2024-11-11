#' Title
#'
#' @param id_estacion
#'
#' @return
#' @export
#'
#' @examples lectura_datos ("NH0046")
lectura_datos <- function(id_estacion) {
  estacion_url <- paste0("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/", id_estacion, ".csv")
  ruta <- paste0(tempdir(), "/", id_estacion, ".csv")

  if (file.exists(ruta)) {
    datos_estacion <- utils::read.csv(ruta)
    cli::cli_inform("Lectura del archivo de estacion '{id_estacion}' desde el directorio temporal.")
  } else {
    response <- tryCatch({
      utils::download.file(estacion_url, ruta)
      datos_estacion <- utils::read.csv(ruta)
      cli::cli_inform("Descargando y leyendo el archivo de estacion '{id_estacion}' en el directorio temporal.")
    }, error = function(e) {
      stop(paste("Error al descargar los datos:", e$message))
    })
  }

  return(datos_estacion)
}

