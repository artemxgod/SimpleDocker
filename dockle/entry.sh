#!/bin/bash
gcc main.c -lpthread -lfcgi -o server
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n server
