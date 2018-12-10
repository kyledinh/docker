FROM node:8

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install bash && apt-get -y install vim
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD https://github.com/elm-lang/elm-platform/releases/download/0.18.0-exp/elm-platform-linux-64bit.tar.gz .
RUN gunzip -c elm-platform-linux-64bit.tar.gz | tar xvf -
RUN mv elm* /usr/local/bin && rm -f /usr/local/bin/elm-*.tar.gz
RUN npm install -g graceful-fs graceful-fs@latest
# RUN npm install -g elm-format
# RUN npm install -g create-elm-app
