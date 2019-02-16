FROM golang:1.11.5-stretch

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN go get github.com/gin-gonic/gin \
&& go get go.uber.org/zap \
&& go get github.com/bitly/go-simplejson \
&& go get github.com/spf13/viper \
&& go get github.com/spf13/cobra

RUN mkdir /opt/src
WORKDIR /opt/src

ENV GOPATH /go:/opt
