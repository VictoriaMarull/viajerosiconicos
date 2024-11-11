
# Función para determinar si el día es bueno para el signo zodiacal y si hay datos para esa fecha
viajando_en_el_tiempo <- function(fecha_nacimiento, fecha_viaje) {

  # Convertir las fechas a formato Date
  fecha_nacimiento <- as.Date(fecha_nacimiento)
  fecha_viaje <- as.Date(fecha_viaje)

  # Obtener el mes y día de la fecha de nacimiento
  mes <- as.integer(format(fecha_nacimiento, "%m"))
  dia <- as.integer(format(fecha_nacimiento, "%d"))

  # Determinar el signo zodiacal basado en la fecha de nacimiento
  if ((mes == 3 && dia >= 21) || (mes == 4 && dia <= 19)) {
    signo <- "Aries"
  } else if ((mes == 4 && dia >= 20) || (mes == 5 && dia <= 20)) {
    signo <- "Tauro"
  } else if ((mes == 5 && dia >= 21) || (mes == 6 && dia <= 20)) {
    signo <- "Géminis"
  } else if ((mes == 6 && dia >= 21) || (mes == 7 && dia <= 22)) {
    signo <- "Cáncer"
  } else if ((mes == 7 && dia >= 23) || (mes == 8 && dia <= 22)) {
    signo <- "Leo"
  } else if ((mes == 8 && dia >= 23) || (mes == 9 && dia <= 22)) {
    signo <- "Virgo"
  } else if ((mes == 9 && dia >= 23) || (mes == 10 && dia <= 22)) {
    signo <- "Libra"
  } else if ((mes == 10 && dia >= 23) || (mes == 11 && dia <= 21)) {
    signo <- "Escorpio"
  } else if ((mes == 11 && dia >= 22) || (mes == 12 && dia <= 21)) {
    signo <- "Sagitario"
  } else if ((mes == 12 && dia >= 22) || (mes == 1 && dia <= 19)) {
    signo <- "Capricornio"
  } else if ((mes == 1 && dia >= 20) || (mes == 2 && dia <= 18)) {
    signo <- "Acuario"
  } else {
    signo <- "Piscis"
  }

  # Verificar si hay datos para la fecha de viaje
  datos_dia_viaje <- subset(dataset_completo, fecha == as.character(fecha_viaje))  # Filtrar por fecha

  if (nrow(datos_dia_viaje) == 0) {
    return(paste("No se encontraron datos para la fecha de viaje", fecha_viaje, "."))
  }

  # Calcular la temperatura promedio del día de viaje
  temperatura_promedio <- mean(datos_dia_viaje$temperatura_abrigo_150cm, na.rm = TRUE)

  # Determinar si será un buen día para el signo basado en la temperatura
  if (signo == "Aries" && temperatura_promedio > 15) {
    dia_bueno <- "¡Buen día para aventurarse con energía!"
  } else if (signo == "Leo" && temperatura_promedio > 20) {
    dia_bueno <- "¡Perfecto para brillar bajo el sol!"
  } else if (signo == "Capricornio" && temperatura_promedio < 15) {
    dia_bueno <- "Un día tranquilo y productivo en temperaturas frescas."
  } else if (signo == "Sagitario" && temperatura_promedio > 20) {
    dia_bueno <- "¡Día ideal para una aventura al aire libre!"
  } else if (signo == "Cáncer" && temperatura_promedio <= 20) {
    dia_bueno <- "Un día acogedor, perfecto para estar en casa o cerca de amigos."
  } else {
    dia_bueno <- "No es el día perfecto, pero aún puedes disfrutar."
  }

  # Devolver el resultado
  return(paste("Tu signo zodiacal es", signo, ".", "Para la fecha de viaje", fecha_viaje,
               "con una temperatura promedio de", round(temperatura_promedio, 2), "°C,", dia_bueno))
}
