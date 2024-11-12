# Test 1: Verificar que la función no da errores con datos válidos
test_that("La función no da errores con dataset_completo y un año válido", {
  # Asegurarse de que el dataset esté cargado
  data(dataset_completo)

  # Seleccionar un año de ejemplo, por ejemplo, 1973
  anio_ejemplo <- 1973

  # Verificar que la función se ejecuta sin errores para el año 1973
  expect_silent(grafico_precipitacion(dataset_completo, anio_ejemplo))
})

# Test 2: Verificar que la función devuelve un objeto ggplot
test_that("La función devuelve un objeto ggplot", {
  # Asegurarse de que el dataset esté cargado
  data(dataset_completo)

  # Seleccionar un año de ejemplo, por ejemplo, 1973
  anio_ejemplo <- 1973

  # Ejecutar la función y guardar el resultado
  resultado <- grafico_precipitacion(dataset_completo, anio_ejemplo)

  # Verificar que la salida de la función es un objeto ggplot
  expect_s3_class(resultado, "gg")
})

