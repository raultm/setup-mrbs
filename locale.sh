#!/bin/bash
# wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/locale.sh && sh ./locale.sh

echo "Comprueba si los meses y los dias de la semana están en español"
echo "http://$(hostname -I)"

while true; do
    read -p "¿Aparecen en inglés?" yn
    case $yn in
        [Yy]* ) 
          echo "Vamos a configurar los locale en español";
          sudo locale-gen "es_ES.UTF-8";
          sudo dpkg-reconfigure locales;
          break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
