#!/bin/bash

dosya=$(readlink -f "$1")
# lnk konumunu getiriyor
kullanici=$(whoami)


yol=$(strings "$dosya" | grep -oE '[A-Za-z]:\\.*\.[a-zA-Z]+')

# windows yolunu linuxa dönüştürüyor
linux_yolu=$(echo "$yol" | sed 's/\\/\//g')
echo "yol: $linux_yolu"

linux_yolu=${linux_yolu#C:/}
uygulama_yolu="/media/$kullanici/3A08965108960BCF/$linux_yolu"
echo $uygulama_yolu
xdg-open "$uygulama_yolu"
