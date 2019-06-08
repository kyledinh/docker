FROM ubuntu:18.04

RUN mkdir /opt/app \
&& apt-get update \
&& apt-get -y install build-essential \
&& apt-get -y install vim \
&& apt-get -y install wget \
&& apt-get -y install git \
&& apt-get -y install curl \
&& apt-get -y install net-tools \
&& api-get -y install awscli

# && apt-get -y install python3-pip \
# && wget -q https://storage.googleapis.com/golang/go1.11.9.linux-amd64.tar.gz \
# && tar -C /usr/local -xzf go1.11.9.linux-amd64.tar.gz \
# ENV GOPATH /opt
# ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
