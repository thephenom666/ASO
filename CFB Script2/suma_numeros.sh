#!/bin/bash

# Inicializar la suma a 0
suma=0

# Bucle infinito para pedir números al usuario
while true; do
   echo "Introduce un número (0 para terminar):"
   read numero

# Si el número es 0, romper el bucle
if [ "$numero" -eq 0 ]; then
  break
fi

# Sumar el número a la suma total
suma=$((suma + numero))
done

# Mostrar la suma final
echo "La suma total es: $suma"
