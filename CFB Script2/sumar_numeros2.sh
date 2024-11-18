#!/bin/bash

suma=0
i=1
while [ $i -le 1000 ]; do
   suma=$((suma + i))
i=$((i + 1))
done
echo "La suma de los números del 1 al 1000 usando while es: $suma"

