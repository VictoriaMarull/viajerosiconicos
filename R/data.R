#' Dataset Completo de Condiciones Meteorologicas Históricas
#'
#' Este dataset contiene mediciones diarias de varias variables meteorologicas de diversas estaciones.
#' Las columnas incluyen datos sobre temperaturas, precipitaciones, humedad, viento, radiacion solar y otros factores climaticos.
#' El dataset es útil para análisis climáticos históricos y predicciones basadas en condiciones pasadas.
#'
#' @format A data frame with X rows and 24 variables:
#' \describe{
#'   \item{id}{Character. Identificador unico de la estación meteorologica.}
#'   \item{fecha}{Date. La fecha de la medicion en formato `AAAA-MM-DD`.}
#'   \item{temperatura_abrigo_150cm}{Numeric. Temperatura medida a 150 cm sobre el suelo.}
#'   \item{temperatura_abrigo_150cm_maxima}{Numeric. Temperatura maxima registrada a 150 cm sobre el suelo.}
#'   \item{temperatura_abrigo_150cm_minima}{Numeric. Temperatura minima registrada a 150 cm sobre el suelo.}
#'   \item{temperatura_intemperie_5cm_minima}{Numeric. Temperatura minima registrada a 5 cm sobre el suelo.}
#'   \item{temperatura_intemperie_50cm_minima}{Numeric. Temperatura mínima registrada a 50 cm sobre el suelo.}
#'   \item{temperatura_suelo_5cm_media}{Numeric. Temperatura media del suelo a 5 cm de profundidad.}
#'   \item{temperatura_suelo_10cm_media}{Numeric. Temperatura media del suelo a 10 cm de profundidad.}
#'   \item{temperatura_inte_5cm}{Numeric. Temperatura a 5 cm sobre el nivel del suelo.}
#'   \item{temperatura_intemperie_150cm_minima}{Numeric. Temperatura mínima a 150 cm sobre el nivel del suelo.}
#'   \item{humedad_suelo}{Numeric. Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Numeric. Precipitacion en milimetros registrada durante el dia.}
#'   \item{granizo}{Numeric. Indicador binario (0 o 1) que indica si hubo granizo.}
#'   \item{nieve}{Numeric. Indicador binario (0 o 1) que indica si hubo nieve.}
#'   \item{heliofania_efectiva}{Numeric. Horas de radiación solar efectiva recibida durante el dia.}
#'   \item{heliofania_relativa}{Numeric. Proporcion de radiacion solar relativa recibida.}
#'   \item{tesion_vapor_media}{Numeric. Tension de vapor media en el aire durante el dia.}
#'   \item{humedad_media}{Numeric. Humedad media del aire durante el dia.}
#'   \item{humedad_media_8_14_20}{Numeric. Humedad media}
#'   \item{rocio_medio}{Numeric. Temperatura media del punto de rocio.}
#'   \item{duracion_follaje_mojado}{Numeric. Duracion del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Numeric. Velocidad media del viento registrada a 200 cm sobre el suelo.}
#'   \item{direccion_viento_200cm}{Character. Dirección del viento registrada a 200 cm sobre el suelo.}
#'   \item{velocidad_viento_1000cm_media}{Numeric. Velocidad media del viento registrada a 1000 cm sobre el suelo.}
#'   \item{direccion_viento_1000cm}{Character. Dirección del viento registrada a 1000 cm sobre el suelo.}
#'   \item{velocidad_viento_maxima}{Numeric. velocidad del viento maxima}
#'   \item{presion_media}{Numeric. La presion atmosferica media registrada durante el dia.}
#'   \item{radiacion_global}{Numeric. Radiacion solar global recibida durante el dia, en unidades de W/m2.}
#'   \item{radiacion_neta}{Numeric. Radiacion neta recibida durante el dia.}
#'   \item{evaporacion_tanque}{Numeric. Medicion de la evaporacion registrada en un tanque durante el dia.}
#'   \item{evapotranspiracion_potencial}{Numeric. Medicion de la evapotranspiración potencial.}
#'   \item{profundidad_napa}{Numeric. Profundidad de la napa freatica.}
#'   \item{horas_frio}{Numeric. Numero total de horas de frio registrado durante el día.}
#'   \item{unidad_frio}{Numeric. Unidad de medicion para las horas de frio.}
#' }
#'
#' @source datos meteorologicos obtenidos por mis profesoras :D
"dataset_completo"
