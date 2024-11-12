# Test: Verificar que la función devuelve un dataframe combinado
test_that("La funcion une los datasets correctamente", {
  # Definir los IDs de las estaciones (por ejemplo, ids de prueba)
  ids_estaciones <- c("NH0046", "NH0098", "NH0437")

  # Usar un dataset de ejemplo para la prueba (puedes usar datos falsos si lo prefieres)
  # Asegurémonos de que 'lectura_datos' sea una función válida que cargue datos ficticios
  # Ejemplo ficticio de lo que podría ser un dataset combinado
  dataset_completo <- unir_datasets(ids_estaciones)

  # Verificar que el resultado sea un dataframe
  expect_s3_class(dataset_completo, "data.frame")

  # Verificar que el dataframe tiene filas (dependiendo de los datos que cargues)
  expect_true(nrow(dataset_completo) > 0)
})

