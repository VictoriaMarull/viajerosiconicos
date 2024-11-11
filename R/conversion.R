# Función para convertir de Fahrenheit a Celsius
conversion <- function(fahrenheit) {
  celsius <- (fahrenheit - 32) * 5/9
  return(celsius)
}
#conversion(98)
