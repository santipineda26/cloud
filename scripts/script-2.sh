#!/bin/bash

echo "Cuales son los usuarios que tienen bin bash como consola"
cat /etc/passwd | grep /bin/bash | cut -d: -f1,7

exit
