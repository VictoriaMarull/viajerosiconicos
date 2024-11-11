#' Viajando en el tiempo
#'
#' @param fecha_nacimiento ingresar fecha de nacimiento en formato aaaa/mm/dd
#' @param fecha_viaje ingresar fecha de viaje en el tiempo en formato aaaa/mm/dd
#'
#' @return esta funcion te devuelve un mensaje para ti viaje en base a tu signo
#'
#' @examples
#' viajando_en_el_tiempo("2004-02-09", "1974-12-30")
#'
#' @export
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
  if (temperatura_promedio < 15) {
    dia_bueno <- "El día será fresco. Puede ser un buen día para reflexionar y descansar en casa."
  } else if (temperatura_promedio >= 15 && temperatura_promedio < 25) {
    dia_bueno <- "Temperatura agradable, ideal para actividades al aire libre o sociales."
  } else {
    dia_bueno <- "Hace calor, perfecto para estar al sol, disfrutar del exterior y actividades veraniegas."
  }

  # Determinar si el día es bueno o malo para el signo específico
  if (signo == "Aries" && temperatura_promedio > 15) {
    dia_comentario <- "¡Perfecto para nuevas aventuras y energía!"
  } else if (signo == "Aries" && temperatura_promedio <= 15) {
    dia_comentario <- "No es el día ideal para Aries. La falta de calor puede restar energía."
  } else if (signo == "Tauro" && temperatura_promedio > 15) {
    dia_comentario <- "Un día ideal para disfrutar de los placeres sencillos, comida y descanso."
  } else if (signo == "Tauro" && temperatura_promedio <= 15) {
    dia_comentario <- "El frío no es lo mejor para Tauro. Prefiere días más templados."
  } else if (signo == "Géminis" && temperatura_promedio >= 15) {
    dia_comentario <- "Es un buen día para moverse, conocer gente nueva y adaptarse a lo que venga."
  } else if (signo == "Géminis" && temperatura_promedio < 15) {
    dia_comentario <- "El frío puede hacer que Géminis se sienta más inactivo y pensativo."
  } else if (signo == "Cáncer" && temperatura_promedio <= 20) {
    dia_comentario <- "Un día acogedor para estar con la familia o descansar en un lugar seguro."
  } else if (signo == "Cáncer" && temperatura_promedio > 20) {
    dia_comentario <- "El calor puede hacer que Cáncer busque refugio en un lugar fresco."
  } else if (signo == "Leo" && temperatura_promedio > 20) {
    dia_comentario <- "¡Perfecto para brillar bajo el sol y destacarte en cualquier actividad!"
  } else if (signo == "Leo" && temperatura_promedio <= 20) {
    dia_comentario <- "El día fresco no es ideal para Leo, que disfruta del calor y la energía."
  } else if (signo == "Virgo" && temperatura_promedio >= 15) {
    dia_comentario <- "Un día perfecto para organizarse, planificar y mejorar aspectos importantes de tu vida."
  } else if (signo == "Virgo" && temperatura_promedio < 15) {
    dia_comentario <- "El frío puede hacer que Virgo se sienta menos motivado para actuar."
  } else if (signo == "Libra" && temperatura_promedio >= 15) {
    dia_comentario <- "Es un buen día para equilibrar tus relaciones, tener conversaciones importantes."
  } else if (signo == "Libra" && temperatura_promedio < 15) {
    dia_comentario <- "El frío puede hacer que Libra prefiera quedarse dentro y evitar las confrontaciones."
  } else if (signo == "Escorpio" && temperatura_promedio < 15) {
    dia_comentario <- "Hoy es un día intenso y misterioso, perfecto para profundizar en tus sentimientos."
  } else if (signo == "Escorpio" && temperatura_promedio >= 15) {
    dia_comentario <- "El calor no es lo mejor para Escorpio, que prefiere días más frescos y tranquilos."
  } else if (signo == "Sagitario" && temperatura_promedio >= 20) {
    dia_comentario <- "¡Un excelente día para hacer algo aventurero o viajar!"
  } else if (signo == "Sagitario" && temperatura_promedio < 20) {
    dia_comentario <- "El frío no es el mejor clima para la aventura que Sagitario busca."
  } else if (signo == "Capricornio" && temperatura_promedio <= 15) {
    dia_comentario <- "Un día perfecto para ser productivo, trabajar en tus metas y estar enfocado."
  } else if (signo == "Capricornio" && temperatura_promedio > 15) {
    dia_comentario <- "El calor puede hacer que Capricornio se sienta menos concentrado y más disperso."
  } else if (signo == "Acuario" && temperatura_promedio > 15) {
    dia_comentario <- "Hoy es un buen día para innovar, probar algo nuevo y ayudar a los demás."
  } else if (signo == "Acuario" && temperatura_promedio <= 15) {
    dia_comentario <- "El frío puede hacer que Acuario se sienta menos sociable y más introspectivo."
  } else if (signo == "Piscis" && temperatura_promedio <= 20) {
    dia_comentario <- "Un día sosegado, perfecto para soñar y explorar nuevas ideas."
  } else {
    dia_comentario <- "El calor puede ser demasiado para Piscis, que prefiere un ambiente tranquilo."
  }

  # Devolver el resultado
  return(paste("Tu signo zodiacal es", signo, ".", "Para la fecha de viaje", fecha_viaje,
               "con una temperatura promedio de", round(temperatura_promedio, 2), "°C.",
               "Comentario del dia:", dia_bueno, dia_comentario))
}


