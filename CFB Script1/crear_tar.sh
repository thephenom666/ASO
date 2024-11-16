#!/bin/bash

# Comprobar que se ha pasado un directorio como parámetro
if [ -z "$1" ]; then
  echo "Por favor, proporciona un directorio como parámetro."
  exit 1
fi

# Obtener el directorio pasado como parámetro
directorio=$1

# Obtener la fecha actual en formato yyyy-mm-dd
fecha=$(date +%F)

# Crear el nombre der archivo tar.gz
nombre_archivo="${fecha}_$(basename $directorio).tar.gz"

# Crear el archivo tar comprimido con gzip
tar -czf $nombre_archivo -C $(dirname $directorio) $(basename $directorio)

# Confirmacion
echo "El archivo $nombre_archivo ha sido creado"
