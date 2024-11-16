#!/bin/bash

# Definir el archivo donde se guardará el listado
fichero="listado_etc.txt"

# Listar los archivos y directorios de /etc y guardarlos en el archivo
ls -l /etc > $fichero

# Imprimir por pantalla el contenido del archivo
cat $fichero

# Mostrar el número de líneas del archivo
echo "Número de líneas en el archivo:"
wc -l < $fichero

# Mostrar el número de palabras en el archivo
echo "Número de palabras en el archivo"
wc -w < $fichero
