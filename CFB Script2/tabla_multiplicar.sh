#!/bin/bash

# Comprobar que se ha pasado un número como parámetro
if [ $# -ne 1 ]; then
  echo "Error: Debes pasar un número como parámetro."
  echo "Uso: $0 <número>
  exit 1
fi

# Asignar el parámetro a la variable n
n=$1

# Generar la tabla de multiplicar
for 1 in {1..10}; do
   resultado=$((1 * n))
   echo "$1 x $n = $resultado"
done
