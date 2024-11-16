#!/bin/bash

# Definir variables
numero1=3.14
numero2=2.71

# Suma . scale=4 indica precisión de 4 decimales
suma=$(echo "scale=4; $numero1 +  $numero2" | bc)

# Resta
resta=$(echo "scale=4; $numero1 - $numero2" | bc)

# Multiplicación
multiplicacion=$(echo "scale=4; $numero1 * $numero2" | bc)

# división
division=$(echo "scale=4; $numero1 / $numero2" | bc)

# Mostrar resultados 
echo "Suma: $suma"
echo "Resta: $resta"
echo "Multiplicación: $multiplicacion"
echo "Division: $division"

