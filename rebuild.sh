#!/bin/bash

docker pull ubuntu:14.04
docker pull ubuntu:16.04
docker pull ubuntu:18.04

MY_LIST=("ubu1404_vagrant" "ubu1604_vagrant" "ubu1804_vagrant")

for (( var=${#MY_LIST[@]}-1 ; var>=0 ; var-- ))
do
    #echo "var is ${MY_LIST[var]}"
    IMG_NUM=$(docker images | grep "${MY_LIST[var]}" | tr -s ' ' | cut -d" " -f3)
    #echo "IMG_NUM is $IMG_NUM"
    docker rmi $IMG_NUM
done

#for (( var=${#MY_LIST[@]} ; var ; var++ ))
for (( var=0 ; var<${#MY_LIST[@]} ; var++ ))
do
    #echo "second loop var is ${MY_LIST[var]}"
    cd "${MY_LIST[var]}"
    /bin/bash ./build_image.sh
    cd ..
done
