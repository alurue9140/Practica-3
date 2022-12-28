#!/bin/bash
while :
do
#Menu
clear

echo "[ Seleccione una opción ]"

echo "1: Crear Usuarios y Grupos"

echo "2: Borrar Usuarios y Grupos"

echo "3: Salir"

echo "Introduce una opción: "

echo ""

#Escoger menu

echo -n "Escoger opcion: "
read opcion

#Seleccion de menu

case $opcion in
1) echo "Creando Usuarios y Grupos"

    groupadd -g 2001 depInformatica

    groupadd -g 2002 depMontaje

    groupadd -g 2003 depLogistica

    newusers ./usuarios.csv

    usermod -c "Alberto Moreno, Cuenta de Alberto Moreno del Departamento de Informatica" amoreno

    usermod -c "Maria Romero, Cuenta de Maria Romero del Departamento de Informatica" mmoreno

    usermod -c "Isaac Romero, Cuenta de Isaac Romero del Departamento de Montaje" iromero

    usermod -c "Nereida Romero, Cuenta de Nereida Romero del Departamento de Montaje" nromero

    usermod -c "Eva Biota, Cuenta de Eva Biota del Departamento de Logistica" ebiota

    usermod -c "Boni Rueda, Cuenta de Boni Rueda del Departamento de Logistica" brueda
;;

2) echo "Borrando Usuarios y Grupos"

    userdel amoreno

    userdel mmoreno

    userdel iromero

    userdel nromero

    userdel ebiota

    userdel brueda


    groupdel depInformatica

    groupdel depMontaje

    groupdel depLogistica

;;

3)exit 0
;;

*)echo "Opcion invalida..."
sleep 1
esac
done
