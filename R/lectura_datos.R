#' Lectura Datos
#'
#' Esta funcion permite leer los datos meteorologicos historicos de una estacion especifica
#' a partir de su ID. Si los datos ya se han descargado previamente, la funcion los lee desde
#' el directorio temporal; si no, los descarga desde la URL correspondiente y los lee.
#'
#' @param id_estacion Un valor de tipo caracter que corresponde al ID de la estacion meteorologica
#' de la cual se desea obtener los datos. Este ID se utiliza para formar la URL desde donde se
#' descargan los datos.
#'
#' @return Devuelve un dataframe con los datos meteorologicos de la estacion correspondiente al ID ingresado.
#' Si los datos no estan disponibles localmente, la funcion los descarga desde una URL predefinida.
#'
#'
#' @examples
#' lectura_datos ("NH0046")
#' lectura_datos ("NH0098")
#' lectura_datos ("NH0437")
#' lectura_datos ("NH0472")
#' lectura_datos ("NH0910")
#'
#' @export
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

