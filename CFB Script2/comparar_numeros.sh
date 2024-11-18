#!/bin/bash

# Pedir al usuario que introduzca el primer número
echo "Introduce el primer número"
read numero1

# Pedir al usuario que introduzca el segundo número
echo "Introduce el segundo número"
read numero2

# Comparar los números y mostrar cúal es mayor
if [ "$numero1" -gt "$numero2" ]; then
  echo "El número $numero1 es mayor que $numero2."
elif [ "$numero1" -lt "$numero2" ]; then
  echo "El número $numero2 es mayor que $numero1."
else
  echo "Ambos números son iguales."
fi
