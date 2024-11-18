#!/bin/bash

# Comprobar que se ha pasado un directorio como parámetro
if [ $# -ne ]; then
  echo "Error: Debes pasar un directorio como parámetro."
  echo "Uso: $0 <directorio>"
  exit 1
fi

# Obyener el directorio pasado como parámetro
directorio=$1

# Comprobar que el parámetro es un directorio válido
if [ ! -d "$directorio" ]; then
  echo "Error: El parámetro '$directorio' no es un directorio válido."
  exit 1
fi

# Inicializar contadores
contador_ficheros=0
contador_subdirectorios=0

# Contar ficheros y subdirectorios
for entrada in "$directorio"/*; do
  if [ -f "$entrada" ]; then
    contador_ficheros=$((contador_ficheros + 1))
  elif [ -d "$entrada" +; then
    contador_subdirectorios=$((contador_subdirectorios + 1))
  fi
done

# Mostrar estadísticas
echo "Número de ficheros: $contador_ficheros"
echo "Número de subdirectorios: $contador_subdirectorios"
