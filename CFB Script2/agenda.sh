#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
  echo "Seleccione una opción:"
  echo "1) Añadir un registro"
  echo "2) Buscar entradas"
  echo "3) Listar todo el archivo"
  echo "4) Ordenar los registros alfabéticamente"
  echo "5) Borra archivo"
  echo "6) Salir"
}

# Función para añadir un registro
añadir_registro() {
  echo "Introduce el nombre"
  read nombre
  echo "Introduce la dirección"
  read direccion
  echo "Introduce el teléfono"
  read telefono
  echo "$nombre, $direccion, $telefono" >> lista.txt
  echo "Registro añadido."
}

# Función para buscar entradas
buscar_entradas() {
  echo "Introduce el término de búsqueda (nombre, dirección o teléfono):"
  read busqueda
  grep -i "$busqueda" lista.txt
}

# Función para listar todo el archivo
listar_todo() {
  if [ -f lista.txt ]; then
    cat lista.txt
  else
    echo "El archivo lista.txt no existe"
}

# Función para ordenar los registros alfabéticamente
ordenar_registros() {
  if [ -f lista.txt ]; then
    sort lista.txt -o lista.txt
    echo "Registros ordenados alfabéticamente."
  else
    echo "El archivo lista.txt no existe."
  fi
}

# Función para borrar el archivo
borrar_archivo() {
  if [ -f lista.txt ]; then
    rm lista.txt
    echo "Archivo lista.txt borrado."
  else
    echo "El archivo lista.txt no existe."
  fi
}

# Bucle infinito para mostrar el menú hasta que se seleccione salir
while true; do
  mostrar_menu
  read -p "Opción: " opcion

  case $ocion in
   1)
     añadir_registro
     ;;
   2)
     buscar_entradas
     ;;
   3)
     listar_todo
     ;;
   4)
     ordenar_registros
     ;;
   5)
     borrar_archivo
     ;;
   6)
     echo "Saliendo..."
     break
     ;;
   *)
     echo "Opción no válida. Por favor, seleccione una opción del 1 al 6."
     ;;
  esac

  echo""
done
