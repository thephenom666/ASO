#!/bin/bash

# Definir el archivo donde se guardará el listado
fichero="listado_etc.txt"

#Listar los archivos y directorios de /etc y guardarlos en el archivo
ls -l /etc > $fichero

# Imprimir por pantalla el contenido del archivo
cat $fichero
