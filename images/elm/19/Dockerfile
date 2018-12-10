FROM node:10

ENV DEBIAN_FRONTEND noninteractive
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN apt-get update && apt-get -y install bash && apt-get -y install vim

ADD https://github.com/elm/compiler/releases/download/0.19.0/binaries-for-linux.tar.gz .
RUN gunzip -c binaries-for-linux.tar.gz | tar xvf -
RUN mv elm /usr/local/bin

ADD https://github.com/avh4/elm-format/releases/download/0.8.1/elm-format-0.8.1-linux-x64.tgz .
RUN gunzip -c elm-format-0.8.1-linux-x64.tgz | tar xvf -
RUN mv elm-format /usr/local/bin

RUN npm install json-server -g
