#!/bin/bash
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

path=$(realpath "nginx/nginx.conf")

docker build -t part4:latest .
docker run -it -d -p 80:81 -v $path:/etc/nginx.nginx part4:latest
