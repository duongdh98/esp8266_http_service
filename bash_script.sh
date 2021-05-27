#!/bin/bash
while true; do
    read -p "Do you want reconfigure esp8266 compliler (Yes-No)-(Y-N) ? " yn
    case $yn in
        [Yy]* ) make menuconfig;make flash ESPPORT=COM8;make monitor ESPPORT=COM8;break;;
        [Nn]* ) make flash ESPPORT=COM8;make monitor ESPPORT=COM8;exit;;
        * ) echo "Please Choses Yes or No.";;
    esac
done