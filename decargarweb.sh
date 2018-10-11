#!/bin/bash
# Simple script para descargar paginas web completas

Normal=$(echo 'printf' '\033[39m')
Verde=$(echo 'printf' '\033[32m')
Blanco=$(echo 'printf' '\033[0m')

$Verde
cat << "INFO"
     _       __               
    | |     / _|              
  __| | ___| |_ __ _  ___ ___ 
 / _` |/ _ \  _/ _` |/ __/ _ \
| (_| |  __/ || (_| | (_|  __/
 \__,_|\___|_| \__,_|\___\___| WEB v1.0
 
INFO
$Blanco
echo "   www.hackingyseguridad.com"
echo
$Blanco
if [ -z "$1" ]; then
        echo "Website defacement. "
        echo "Uso: sh $0 <URL>"
        exit 0
fi

echo
wget --limit-rate=100k --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla $1
