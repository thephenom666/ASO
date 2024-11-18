#!/bin/bash

# Comprobar que se ha pasado un directorio como parámetro
if [ $# -ne 1 ]; then
  echo "Error: Debes pasar un directorio como parámetro."
  echo "Uso: $0 <directorio>"
  exit 1
fi

# Obtener el directorio pasado como parámetro
directorio=$1

# Comprobar que el parámetro es un directorio válido
if [ ! -d "$directorio" ]; then
  echo "Error: El parámetro '$directorio' no es un directorio válido."
  exit 1
fi

# Contador de entradas procesadas
contador=0

# Listar las entradas en el directorio
for entrada in "$directorio"/*; do
  if [ -d "$entrada" ]; then
    echo "Directorio: $(basename "$entrada")"
  elif [ -f "$entrada" ]; then
    echo "Fichero: $(basename "$entrada·)"
elif [ -L "$entrada" ]; then
    echo "Enlace simbólico: $(basename "$entrada")"
elif [ -b "$entrada" ]; then
    echo "Archivo especial de bloque: $(basename "$entrada")"
elif [ -c "$entrada" ]; then
    echo "Archivo especial de caracter: $(basename "$entrada")"
  fi
  contador=$((contador + 1))
done

# Mostrar el número total de entradas procesadas
echo "Número total de entradas procesadas: $contador"
