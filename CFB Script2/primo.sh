#!/bin/bash

# Comprobar que se ha pasado un número como parámetro
if [ $# -ne 1 ]; then
  echo "Error: Debes pasar un número como parámetro."
  echo "Uso: $0 <número>"
  exit 1
fi

# Asignar el parámetro a la variable n
n=$1

# Comprobar si el número es menor o igual a 1
if [ "$n" -le 1 ]; then
  echo "El número $n no es primo."
  exit 0
fi

# Verificar si el número es primo
es_primo=1
for ((i=2; i*i<=n; i++)) do
  if [ $((n % i)) -eq 0 ]; then
    es_primo=0
    break
  fi
done

# Mostrar resultado
if [ $es_primo -eq 1 ]; then
  echo "El número $n es primo."
else
  echo "El número $n no es primo."
fi
