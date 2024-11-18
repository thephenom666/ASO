#!/bin/bash

# Comprobar que se han pasado dos parámetros
if [ "$#" -ne 2 ]; then
  echo "Error: Debes indicar dos parámetros."
  echo "Uso: $0 <archivo_origen> <archivo_destino>"
  exit 1
fi

# Asignar los parámetros a variables
archivo_origen=$1
archivo_origen=$2

# Comprobar que el primer parámetro es un archivo ordinario que existe
if [ ! -f "$archivo_origen" ]; then
  echo "Error: El archivo origen '$archivo_origen' no existe o no es un archivo ordinario."
  exit 1
fi

# Comprobar que no existe un identificador con el mismo nombre que el indicado en el segundo parámetro
if [ -e "$archivo_destino" ]; then
  echo "Error: Ya existe un archivo, directorio o enlace simbólico llamado '$archivo_destino'."
  exit 1
fi

# Realizar la copia del archivo
cp "$archivo_origen" "$archivo_destino"

# Confirmar que la copia se ha realizado correctamente
if [ $? -eq 0 ]; then
  echo "Archivo copiado correctamente de '$archivo_origen' a '$archivo_destino'."
else
  echo "Error: No se pudo copiar el archivo."
  exit 1
fi
