#' Conversion de grados Fahrenheit a Celsius
#'
#' Esta funcion convierte una temperatura dada en grados Fahrenheit a su equivalente en grados Celsius.
#' Utiliza la formula comun de conversion: Celsius = (Fahrenheit - 32) * 5/9.
#'
#' @param fahrenheit Un valor numerico que representa la temperatura en grados Fahrenheit.
#'
#' @return Esta funcion devuelve un valor numerico que representa la temperatura convertida en grados Celsius.
#'         El valor devuelto es el equivalente en grados Celsius de la temperatura proporcionada en Fahrenheit.
#'
#' @examples
#' conversion(98)
#'
#' @export
conversion <- function(fahrenheit) {
  celsius <- (fahrenheit - 32) * 5/9
  return(celsius)
}

