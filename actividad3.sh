#!/bin/bash

cancelar_apagado() {
  echo "Atecreas naah"
  shutdown -c  
  echo "Apagado cancelado"
}

read -p "En cuanto tiempo quieres que se apague?: " duration
echo "Esta máquina se apagará en $duration segundos"


shutdown -h +$duration &

if [ $duration -eq 10 ]; then
  cancelar_apagado
  exit 0
fi

cancelar_apagado

exit 0

