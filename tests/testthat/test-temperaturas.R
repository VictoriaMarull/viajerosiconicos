# Test 1: Verificar que la funcion no da errores con un anio valido
test_that("La funcion no da errores con un anio valido", {
  # Asegurarse de que el dataset esté cargado
  data(dataset_completo)

  # Usamos un anio que sabemos que tiene datos en el dataset
  anio_ejemplo <- 1973

  # Verificar que la funcion se ejecuta sin errores para el anio 1973
  expect_silent(temperaturas(dataset_completo, anio_ejemplo))
})

# Test 2: Verificar que la funcion arroja un error cuando no hay datos para el anio
test_that("La funcion arroja un error cuando no hay datos para el anio ingresado", {
  # Asegurarse de que el dataset este cargado
  data(dataset_completo)

  # Usamos un anio que sabemos que no tiene datos en el dataset
  anio_no_existente <- 2050  # Asumimos que no hay datos para este anio

  # Verificar que la funcion lanza un error
  expect_error(temperaturas(dataset_completo, anio_no_existente),
               "No se encontraron datos para el anio ingresado.")
})

