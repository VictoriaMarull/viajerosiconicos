# Test 1: Verificar que la función no da errores con un año válido
test_that("La función no da errores con un año válido", {
  # Asegurarse de que el dataset esté cargado
  data(dataset_completo)

  # Usamos un año que sabemos que tiene datos en el dataset
  anio_ejemplo <- 1973

  # Verificar que la función se ejecuta sin errores para el año 1973
  expect_silent(temperaturas(dataset_completo, anio_ejemplo))
})

# Test 2: Verificar que la función arroja un error cuando no hay datos para el año
test_that("La función arroja un error cuando no hay datos para el año ingresado", {
  # Asegurarse de que el dataset esté cargado
  data(dataset_completo)

  # Usamos un año que sabemos que no tiene datos en el dataset
  anio_no_existente <- 2050  # Asumimos que no hay datos para este año

  # Verificar que la función lanza un error
  expect_error(temperaturas(dataset_completo, anio_no_existente),
               "No se encontraron datos para el año ingresado.")
})

