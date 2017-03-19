#!/bin/bash
#List all folders that contains *.pbtxt file
#and let user choose folder to run tensorboard on
printf "%4s %s\n" "ID" "Tensorflow logdir"
#list all files end with pbtxt pattern, only keep folder name, 
#sort, make unique, and add ID
folders=$(find . -type f -name '*pbtxt' | sed -r 's|/[^/]+$||' |sort |uniq|awk '{printf("%4d %s\n",NR, $1)}')
echo "$folders"
#$folders | awk '{printf("%4d %s\n",NR, $0)} '
read -p "Enter the logdir ID:" selectedID
#select the logdir with selectedID
logdir=$(echo "$folders"|tail -n  +$selectedID | head -1 | awk '{print $2}')
echo $logdir
tensorboard --logdir=$logdir

