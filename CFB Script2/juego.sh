#!/bin/bash

# Número a adivinar
numero_a_adivinar=42

echo "¡Bienvenido al juego de adivinar el número!"
echo "Adivina el número del 1 al 100. Introduce 0 si deseas rendirte."

# Bucle para pedir números al usuario
while true; do
  echo "Introduce un número:"
  read numero

# Si el número es 0, salir del juego
if [ "$numero" -eq 0 ]; then
  echo "Te has rendido. El número era $numero_a_adivinar."
  break
fi

# Comprobar si el número es correcto
if [ "$numero" -eq "$numero_a_adivinar" ]; then
  echo "¡Enhorabuena! Has adivinado el número."
  break
elif [ "$numero" -lt "$numero_a_adivinar" ]; then
  echo "El número es mayor."
else
  echo "El número es menor."
fi
done
