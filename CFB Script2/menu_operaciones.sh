#!/bin/bash

# Función para mostrar menú
mostrar_menu() {
   echo "Seleccione una operación"
   echo "1) Sumar"
   echo "2) Restar"
   echo "3) Multiplicar"
   echo "4) Dividir"
   echo "5) Salir"
}

# Bucle infinito para mostrarel menú hasta que se seleccione salir
while true; do
  mostrar_menu
  read -p "Opción: " opcion

# Comprobar si la opción es salir
if [ "$opcion" -eq 5 ]; then
  echo "Saliendo..."
  break
fi

# Solicitar los números al usuario
read -p "Introduce el primer número: " numero1
read -p "Introduce el segundo número: " numero2

# Realizar la operación seleccionada
case $opcion in
  1)
    resultado=$(echo "$numero1 + $numero2" | bc -l)
    echo "Resultado: $numero1 + $numero2 = $resultado"
    ;;
  2)
    resultado=$(echo "$numero1 - $numero2" | bc -l)
    echo "Resultado: $numero1 - $numero2 = $resultado"
    ;;
  3)
    resultado=$(echo "$numero1 * $numero2" | bc -l)
    echo "Resultado: $numero1 * $numero2 = $resultado"
   ;;
  4)
    # Comprobar si el segundo número es cero antes de dividir
    if [ "$numero2" -eq 0 ]; then
      echo "Error: División  por cero no permitida"
    else 
      resultado=$(echo "scale=2; $numero1 / $numero2" | bc -l)
      echo "Resultado: $numero1 / $numero2 = $resultado"
    fi
    ;;
   *)
     echo "Opción no válida. Por favor, seleccione una opción del 1 al 5."
     ;;
esac

echo""
done

