#!/bin/bash
time docker build -t kyledinh/certbot .
docker tag kyledinh/certbot gcr.io/supple-apricot-213017/certbot

# https://certbot.eff.org/lets-encrypt/ubuntubionic-nginx.html
