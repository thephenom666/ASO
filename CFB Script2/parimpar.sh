#!/bin/bash

# Pedir al usuario que introduzca un número
echo "Introduce un número:"
read numero

# Comprobar si el número es par o impar
if [ $(($numero % 2)) -eq 0 ]; then
  echo "El número $numero es par."
else
  echo "El número $numero es impar."
fi
