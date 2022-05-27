#!/bin/bash

COMPROBAR=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
#VALOR="81"

if [ "$COMPROBAR" -ge 1 ] && [ "$COMPROBAR" -le 40 ];
then
echo "Todo esta bien. Espacio utilizado de disco= $COMPROBAR"%

elif [ "$COMPROBAR" -ge 41 ] && [ "$COMPROBAR" -le 80];
then
echo "Advertencia. Espacio utilizado de disco= $COMPROBAR"%

elif [ "$COMPROBAR" -ge 81 ];
then
echo "Necesita un nuevo disco duro. Espacio utilizado de disco= $COMPROBAR"%

else
echo "Se ha presentado un error en la consulta"

fi
exit
