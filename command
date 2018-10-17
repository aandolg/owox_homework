#DOCKER 
docker build -t aandolg/centos7_systemctl:1.0 . -f Dockerfile_centos_systemctl

docker build -t aandolg/nginx:1.0 .
docker run --name aandolg_container -it aandolg/nginx:1.0
docker run --name aandolg_container -it -p 8088:80 aandolg/nginx:1.0


docker run --name centos-linux -d centos:centos7 /bin/sh -c "while true; do ping 8.8.8.8; done"
docker container exec -it centos-linux /bin/bash

Stop and remove all container
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

Remove all images
docker rmi $(docker images -a -q) -f

docker stop $(docker ps -a -q) &&  docker rm $(docker ps -a -q) && docker rmi $(docker images -a -q) -f

docker container exec -it aandolg_container_8080 /bin/bash -c "sed -i 's/day1/day 1/g;' /usr/share/nginx/html/index.html"


#TERMINAL 
Pretty view json responce
"json string"| python -m json.tool
