
<!-- README.md is generated from README.Rmd. Please edit that file -->

## viajerosiconicos

# Objetivo

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

## Instalacion

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

# Funcion ‘conversion()’

convierte 98°F a Celsius

``` r
conversion(98)
#> [1] 36.66667
```

# Funcion ‘resumen_meteorologico()’

genera un resumen de condiciones meteorologicas para el año 1973

``` r
resumen_meteorologico(dataset_completo, anio_usuario = 1973)
#>   temperatura_media temperatura_maxima temperatura_minima precipitacion_total
#> 1          17.57041                 42                 -4              5602.8
#>   granizo_total horas_frio_total
#> 1             4         2059.685
```

# Funcion ‘grafico_precipitacion()’

genera un gráfico de barras para los días con precipitación en 2010

``` r
grafico_precipitacion(dataset_completo, 2010)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

# Funcion ‘temperaturas()’

identifica los días más calurosos y más fríos de 2011

``` r
temperaturas(dataset_completo, 2011)
#>   Anio Dia_Mas_Calido Temperatura_Maxima Dia_Mas_Frio Temperatura_Minima
#> 1 2011     2011-12-21               33.7   2011-08-01               3.45
```

Si deseas contribuir a viajerosiconicos o aprender más sobre cómo
usarlo, visita el repositorio de GitHub para obtener más detalles,
documentación y características futuras.

autora: <vmarul@mail.austral.edu.ar>

¡Feliz viaje en el tiempo!
