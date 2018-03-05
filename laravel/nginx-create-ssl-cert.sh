#!/bin/bash
#docker-compose exec web mkdir /etc/nginx/ssl
#docker-compose exec web openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout dockerfiles/ssl/nginx.key -out dockerfiles/ssl/nginx.crt
