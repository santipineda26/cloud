#!/bin/bash

echo "Cuales usuarios tienen un userId mayor a 1000"
cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}' | cut -d: -f1,2

exit
