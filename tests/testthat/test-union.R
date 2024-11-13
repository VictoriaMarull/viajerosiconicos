# Test: Verificar que la funcion devuelve un dataframe combinado
test_that("La funcion une los datasets correctamente", {
  # Definir los IDs de las estaciones (por ejemplo, ids de prueba)
  ids_estaciones <- c("NH0046", "NH0098", "NH0437")

  # Ejemplo ficticio de lo que podria ser un dataset combinado
  dataset_completo <- unir_datasets(ids_estaciones)

  # Verificar que el resultado sea un dataframe
  expect_s3_class(dataset_completo, "data.frame")

  # Verificar que el dataframe tiene filas (dependiendo de los datos que cargues)
  expect_true(nrow(dataset_completo) > 0)
})
