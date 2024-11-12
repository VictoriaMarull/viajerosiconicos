#' Conversion de grados
#'
#' @param fahrenheit parametro numerico
#'
#' @return devuelve la temperatura en centigrados
#'
#' @examples
#' conversion(98)
#'
#' @export
conversion <- function(fahrenheit) {
  celsius <- (fahrenheit - 32) * 5/9
  return(celsius)
}

