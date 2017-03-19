#!/bin/bash
read -p "Enter which port you want to free: " Port
PortDesc=$(sudo netstat -anp | grep $Port)
echo $PortDesc
if [ -z $PortDesc ]; then
    printf "No process is occupying port %d\n" $Port
else
    read -p "Confirm y/n: " Response
    if [ "$Response" == "y" ]; then
        sudo kill $(echo $PortDesc | awk '{print $7}'| awk -F '/' '{print $1}')
    fi
fi
