#!/bin/bash

# Inicializar una cadena vacía
cadena=""

# Bucle para generar y mostrar el patrón
for i in {1..5}; do
  cadena="$cadena$i"
  echo "$cadena"
done

