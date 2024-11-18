#!/bin/bash

# Bucle para generar y mostrar el patrón
for i in {1..5}; do
  for j in $(seq 1 $i); do
    echo -n "$i"
  done
  echo""
done
