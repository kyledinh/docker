FROM amazonlinux:2 

RUN mkdir /opt/app 
&& wget -q https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz \
&& tar -C /usr/local -xzf go1.9.1.linux-amd64.tar.gz \
&& rm -rf /tmp/*

ENV GOPATH /opt
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
ENV NODE_PATH /opt/src/node_modules
