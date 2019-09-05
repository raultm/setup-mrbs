#!/bin/bash
# wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/03_locale.sh && sh ./03_locale.sh && rm ./03_locale.sh

echo "Comprueba si los meses y los dias de la semana están en español"
echo "http://$(hostname -I)"

while true; do
    read -p "¿Aparecen en inglés? [y/n]" yn
    case $yn in
        [YySs]* ) 
          echo "Vamos a configurar los locale en español";
          update-locale "LANG=es_ES.UTF-8"
          locale-gen --purge "es_ES.UTF-8"
          dpkg-reconfigure --frontend noninteractive locales
          break;;
        [Nn]* ) exit;;
        * ) echo "Contesta con Yes, Si o no.";;
    esac
done
