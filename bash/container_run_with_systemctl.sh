#!/bin/bash
if [ -n "$1" ]
then
   port=$1
else
   port=8090
fi

echo "Try start container $port"
docker run --name "aandolg_container_$port" -d -p $port:80 -v $PWD/src/.:/usr/share/nginx/html/. aandolg/nginx_systemctl:1.0
