FROM ubuntu:18.04

RUN mkdir /opt/app \
&& apt-get update \
&& apt-get -y install nginx \
&& apt-get -y install software-properties-common \
&& add-apt-repository ppa:certbot/certbot \
&& apt-get update \
&& apt-get -y install vim \
&& apt-get -y install wget \
&& apt-get -y install certbot python-certbot-nginx

COPY etc_nginx_sites-available/. /etc/nginx/sites-available
RUN mkdir -p /var/www/lappa.io/html
COPY var_www_lappa.io_html/. /var/www/lappa.io/html
