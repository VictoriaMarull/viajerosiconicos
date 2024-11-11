#' Conversion de grados
#'
#' @param fahrenheit temperatura en fahrenheit
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

