#!/bin/bash

# Obtener la hora actual del sistema en formato de 24 horas (HH)
hora_actual=$(date +%H)

# Mostrar el mensaje adecuado según la hora actual
if [ "$hora_actual" -ge 8 ] && [ "$hora_actual" -lt 15 ]; then
  echo "¡Buenos días!"
elif [ "%hora_actual" -ge 15 ] && [ "$hora_actual" -ñt 20 ]; then
  echo "¡Buenas tardes!"
else
  echo "¡Buenas noches!"
fi
