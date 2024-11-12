
ids_estaciones <- c("NH0046", "NH0098", "NH0437", "NH0472", "NH0910")
#' Llamar a la función para unir los datasets
 dataset_completo <- unir_datasets(ids_estaciones)
usethis::use_data(dataset_completo)
