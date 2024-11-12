#Definir los IDs de las estaciones
ids_estaciones <- c("NH0046", "NH0098", "NH0437", "NH0472", "NH0910")

# Llamar a la función para unir los datasets
dataset_completo <- unir_datasets(ids_estaciones)

# Ver las primeras filas del dataset combinado
head(dataset_completo)

# Guardar dataset_completo como un archivo R en la carpeta data/
usethis::use_data(dataset_completo, overwrite = TRUE)

