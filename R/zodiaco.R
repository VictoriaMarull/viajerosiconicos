# Función para sugerir un outfit basado en el signo zodiacal
zodiaco <- function(fecha_nacimiento) {

  # Convertir la fecha de nacimiento a una fecha de tipo Date
  fecha <- as.Date(fecha_nacimiento)

  # Obtener el mes y día de la fecha
  mes <- as.integer(format(fecha, "%m"))
  dia <- as.integer(format(fecha, "%d"))

  # Determinar el signo zodiacal
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

  # Definir el outfit basado en el signo zodiacal
  if (signo == "Aries") {
    outfit <- "Estilo audaz, ¡con ropa que haga una declaración!"
  } else if (signo == "Tauro") {
    outfit <- "Estilo cómodo y elegante, con materiales de alta calidad."
  } else if (signo == "Géminis") {
    outfit <- "Estilo divertido y versátil, siempre listo para cualquier ocasión."
  } else if (signo == "Cáncer") {
    outfit <- "Estilo suave y acogedor, con colores suaves."
  } else if (signo == "Leo") {
    outfit <- "Estilo llamativo y lleno de confianza, con toques de lujo."
  } else if (signo == "Virgo") {
    outfit <- "Estilo práctico y detallado, con un toque de elegancia."
  } else if (signo == "Libra") {
    outfit <- "Estilo equilibrado, con un enfoque en la armonía de las prendas."
  } else if (signo == "Escorpio") {
    outfit <- "Estilo misterioso y atrevido, con tonos oscuros y profundos."
  } else if (signo == "Sagitario") {
    outfit <- "Estilo aventurero y cómodo, siempre listo para explorar."
  } else if (signo == "Capricornio") {
    outfit <- "Estilo profesional y sobrio, siempre elegante."
  } else if (signo == "Acuario") {
    outfit <- "Estilo futurista y único, con toques de modernidad."
  } else {
    outfit <- "Estilo soñador y bohemio, siempre buscando algo nuevo."
  }

  # Devolver el resultado
  return(paste("Tu signo zodiacal es", signo, ". Te sugerimos el siguiente outfit:", outfit))
}

#ejemplo de uso zodiaco("1990-08-15")
