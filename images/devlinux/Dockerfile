FROM ubuntu:17.04

RUN mkdir /opt/app \
&& apt-get update \
&& apt-get -y install build-essential \
&& apt-get -y install vim \
&& apt-get -y install wget \
&& apt-get -y install git \
&& apt-get -y install curl \
&& apt-get -y install net-tools \
&& apt-get -y install python3-pip \
&& apt-get -y install nodejs \
&& apt-get -y install npm \
&& rm -rf /var/lib/apt/lists/* \
&& npm install gulp \
&& cd /tmp \
&& wget -q https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz \
&& tar -C /usr/local -xzf go1.9.1.linux-amd64.tar.gz \
&& rm -rf /tmp/*

ENV GOPATH /opt
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
ENV NODE_PATH /opt/src/node_modules
