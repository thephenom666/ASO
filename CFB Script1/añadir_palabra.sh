#!/bin/bash

# Pedir al usuario que introduzca una palabra 
echo "Introduce una palabra:"
read palabra

# Añadir la palabra al archivo lista.txt
echo $palabra >> lista.txt

# Confirmar quer la palabra ha sido añadida
echo "La palabra \"$palabra\" ha sido añadida al archivo lista.txt"
