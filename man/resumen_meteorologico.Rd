% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resumen_meteorologico.R
\name{resumen_meteorologico}
\alias{resumen_meteorologico}
\title{Resumen meteorologico anual}
\usage{
resumen_meteorologico(dataset, anio_usuario)
}
\arguments{
\item{dataset}{Un dataframe con los datos meteorologicos historicos}

\item{anio_usuario}{Un valor numerico o caracter correspondiente al anio para el cual se desea obtener el resumen}
}
\value{
Un dataframe con el resumen de las condiciones meteorologicas del anio solicitado. Las columnas devueltas son:
- \code{temperatura_media}: La temperatura media anual medida a 150 cm de altura.
- \code{temperatura_maxima}: La temperatura maxima anual medida a 150 cm de altura.
- \code{temperatura_minima}: La temperatura minima anual medida a 150 cm de altura.
- \code{precipitacion_total}: La precipitacion total anual en milimetros.
- \code{granizo_total}: El total de dias con granizo en el anio.
- \code{horas_frio_total}: El total de horas con frio en el anio.
}
\description{
Esta funcion recibe un conjunto de datos meteorologicos y un ano especifico para el cual se calcula un resumen
con diferentes fenomenos meteorologicos anuales, incluyendo la temperatura media, maxima y minima, la precipitacion
total, el total de dias con granizo, y el total de horas con frio.
}
\examples{
resumen_meteorologico(dataset_completo, anio_usuario = 1973)

}
