#!/bin/bash

docker build -t aandolg/centos7_systemctl:1.0 $PWD -f $PWD/Dockerfile_centos_systemctl
docker build -t aandolg/nginx:1.0 $PWD
