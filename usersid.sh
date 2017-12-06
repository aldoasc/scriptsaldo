#!/bin/bash
#Este  script permite añadir usuarios 
#Desarrollador: Aldo Alfredo Sanchez Camacho

echo "Escriba el nombre del usuario"
read name
echo "Escriba su directorio home"
read home
echo "A que grupo pertenece este usuario?"
read grup
echo "Escriba su shell (bin/bash)"
read chel

groupadd $grup

useradd  -d $home -g $grup -s $chel $name

passwd $name

echo "Un nuevo usuario, ha nacido"

