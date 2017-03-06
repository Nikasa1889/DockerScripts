#!/bin/bash
#List current running docker images
echo "Select one of the following running images:"
echo -e "Number \t Name"
echo $(docker ps | tail -n +2| awk -F ' ' '{printf("%7d %s\n", NR, $2)}')
read -p "Enter the process number:" selectedID
selectedID=$(($selectedID + 1))
#Get Docker process ID of the specified docker image name
DOCKER_ID=$(docker ps | tail -n  +$selectedID | head -1 | awk '{print $1}')
docker exec -it $DOCKER_ID /bin/bash
