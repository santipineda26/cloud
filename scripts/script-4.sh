#!/bin/bash

echo "Digite la URL para analizar su estado: "$URL
read URL
#URL="https://github.com/"

RESULTADO=$(curl -sIL $URL | grep '^HTTP' | tail -l | awk '{print $2}')
if [ "$RESULTADO" = "200" ]; 
then
echo "La página consultada esta funcionando correctamente. ESTADO: $RESULTADO"

elif ["$RESULTADO" = "404" ];
then
echo "La página consultada no esta funcionando. ESTADO: $RESULTADO"

else
echo "La página consultada presenta un estado diferente al 404. ESTADO: $RESULTADO"

fi
exit
