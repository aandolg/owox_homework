#!/bin/bash
if [ -n "$1" ]
then
   port=$1
else
   port=8080
fi

echo "Try start container $port"
docker run --name "aandolg_container_$port" -d -p $port:80 aandolg/nginx:1.0
