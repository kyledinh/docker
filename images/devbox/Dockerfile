FROM ubuntu:18.04

RUN mkdir /opt/app \
&& apt-get update \
&& apt-get -y install build-essential \
&& apt-get -y install vim \
&& apt-get -y install wget \
&& apt-get -y install git \
&& apt-get -y install curl \
&& apt-get -y install net-tools \
&& apt-get -y install python3-pip \
&& pip3 install awscli --upgrade --user

RUN apt-get update \
&& apt-get -y install apt-transport-https ca-certificates gnupg-agent software-properties-common \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
&& apt-get update \
&& apt-get -y install docker-ce-cli

RUN wget -q https://storage.googleapis.com/golang/go1.12.7.linux-amd64.tar.gz \
&& tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz

ENV GOPATH /opt
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
