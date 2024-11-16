#!/bin/bash

# Pedir al usuario que introduzca el primer número
echo "Introduce el primer número"
read numero1

# Pedir al usuario que introduzca el segundo número
echo "Introduce el segundo número"
read numero2

# Calcular la media aritmética
media=$(echo "($numero1 + $numero2) / 2" | bc -l)

#Mostrar la media aritmética por pantalla
echo "La media aritmética de $numero1 y $numero2 es: $media"
