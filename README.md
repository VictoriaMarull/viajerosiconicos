
<!-- README.md is generated from README.Rmd. Please edit that file -->

# viajerosiconicos

<img src="man/figures/viajeros.png" align="right" width="130"/>

## Objetivo

‘viajerosiconicos’ es un paquete de prueba diseñado para trabajar con
datos meteorológicos históricos. Este paquete permite a los usuarios
analizar las condiciones climáticas de años pasados y realizar resúmenes
sobre temperatura, precipitación y otros fenómenos meteorológicos clave.
Con las funciones incluidas, es posible obtener un análisis detallado de
las temperaturas extremas, la precipitación y más.

Este paquete contiene funciones útiles para calcular y analizar los
datos meteorológicos de forma sencilla. Las siguientes funciones han
sido diseñadas para facilitar el análisis de datos climáticos
históricos.

Es útil para investigadores, estudiantes o cualquier persona interesada
en estudiar el clima de épocas pasadas, haciendo especial énfasis en las
temperaturas extremas, la precipitación y las condiciones que
caracterizaron diferentes años.NO DESCARGAR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/VictoriaMarull/viajerosiconicos/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/VictoriaMarull/viajerosiconicos/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

# Instalacion

Puedes instalar la versión de desarrollo de **`viajerosiconicos`**
directamente desde GitHub [GitHub](https://github.com/) utilizando el
paquete `pak`:

``` r
# install.packages("pak")
pak::pak("VictoriaMarull/viajerosiconicos")
```

# Importacion Paquete

``` r
library(viajerosiconicos)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
## basic example code
```

## Nuestras funciones

# Funcion `conversion()`

Esta función toma un valor numérico en grados Fahrenheit y lo convierte
a grados Celsius utilizando la fórmula estándar de conversión: Celsius =
(Fahrenheit - 32) \* 5 / 9. Es útil para realizar conversiones rápidas
entre las dos escalas de temperatura más comunes.

``` r
conversion(98)
#> [1] 36.66667
```

# Funcion `resumen_meteorologico()`

Esta función toma un conjunto de datos meteorológicos y un año como
parámetros. Luego, filtra los datos para el año solicitado y calcula el
resumen de las condiciones meteorológicas, incluyendo:

-La temperatura media anual medida a 150 cm de altura. -La temperatura
máxima y mínima anual. -El total de precipitación anual. -El total de
días con granizo. -El total de horas con frío. Este resumen proporciona
una visión completa de las condiciones climáticas de un año determinado.

``` r
resumen_meteorologico(dataset_completo, anio_usuario = 1973)
#>   temperatura_media temperatura_maxima temperatura_minima precipitacion_total
#> 1          17.57041                 42                 -4              5602.8
#>   granizo_total horas_frio_total
#> 1             4         2059.685
```

# Funcion `grafico_precipitacion()`

Esta función crea un gráfico de barras en el cual el eje x representa
las fechas de los días con precipitación (mayor a 0) en el año
especificado, y el eje y representa el número de días con precipitación.
El gráfico visualiza de manera efectiva la cantidad de días lluviosos o
con precipitaciones significativas durante el año seleccionado.

``` r
grafico_precipitacion(dataset_completo, 2010)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

# Funcion `temperaturas()`

Esta función permite conocer cuál fue el día más caluroso y cuál fue el
día más frío del año solicitado. La función devuelve tanto la
temperatura máxima como la temperatura mínima de esos días,
proporcionando una visión clara de las condiciones extremas durante ese
periodo. Es ideal para analizar los picos de temperatura en un conjunto
de datos de un año determinado.

``` r
temperaturas(dataset_completo, 2011)
#>   Anio Dia_Mas_Calido Temperatura_Maxima Dia_Mas_Frio Temperatura_Minima
#> 1 2011     2011-12-21               33.7   2011-08-01               3.45
```

Si deseas contribuir a viajerosiconicos o aprender más sobre cómo
usarlo, visita el repositorio de GitHub para obtener más detalles,
documentación y características futuras.

autora: <vmarul@mail.austral.edu.ar>

codigo de contribucion:
<https://github.com/VictoriaMarull/viajerosiconicos/blob/master/.github/CONTRIBUTING.md>

¡Feliz viaje en el tiempo!
