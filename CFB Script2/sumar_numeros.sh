#!/bin/bash

suma=0
for i in {1..1000}; do
  suma=$((suma + i))
done
echo "La suma de los números del 1 al 1000 usando for es: $suma"

