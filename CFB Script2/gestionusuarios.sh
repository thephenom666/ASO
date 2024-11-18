#!/bin/bash

# Función para mostrar el uso correcto del script
mostrar_uso() {
   echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
   exit 1
}

# Comprobar si se han pasado al menos 4 parámetros
if [ $# -lt 4 ]; then
    mostrar_uso
fi

# Obtener los parámetros
accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

# Crear identificador de usuario
identificador="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

case $accion in
    alta)
       # Crear grupo si no se ha especificado uno
       if [ -z "$grupo" ]; then
           grupo=$identificador
           groupadd $grupo
       fi
       
       # Crear el usuario con el identificador y asignarlo al grupo
       useradd -m -g $grupo -s /bin/bash $identificador
       echo "Usuario $identificador creado y asignado al grupo $grupo."
       ;;
     baja)
       # Eliminar al usuario
       userdel -r $identificador
       echo "Usuario $identificador eliminado."
       ;;
     *)
       mostrar_uso
       ;;
esac
