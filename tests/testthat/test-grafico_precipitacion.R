# Test 1: Verificar que la funcion no da errores con datos validos
test_that("La funcion no da errores con dataset_completo y un anio valido", {
  # Asegurarse de que el dataset este cargado
  data(dataset_completo)

  # Seleccionar un anio de ejemplo, por ejemplo, 1973
  anio_ejemplo <- 1973

  # Verificar que la funcion se ejecuta sin errores para el anio 1973
  expect_silent(grafico_precipitacion(dataset_completo, anio_ejemplo))
})

# Test 2: Verificar que la funcion devuelve un objeto ggplot
test_that("La funcion devuelve un objeto ggplot", {
  # Asegurarse de que el dataset este cargado
  data(dataset_completo)

  # Seleccionar un anio de ejemplo, por ejemplo, 1973
  anio_ejemplo <- 1973

  # Ejecutar la funcion y guardar el resultado
  resultado <- grafico_precipitacion(dataset_completo, anio_ejemplo)

  # Verificar que la salida de la funcion es un objeto ggplot
  expect_s3_class(resultado, "gg")
})

