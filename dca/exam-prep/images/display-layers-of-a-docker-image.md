## Display layers of a docker images

* `docker history kyledinh/datawasher:39`

```
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
285bb4daa83b        38 hours ago        /bin/sh -c #(nop)  CMD ["/app/datawasherLinu…   0B                  
f6a0c1fcd0ce        38 hours ago        /bin/sh -c #(nop)  EXPOSE 443                   0B                  
785d89db23f2        38 hours ago        /bin/sh -c #(nop) COPY dir:b666a39fe835d881e…   10.1MB              
8c05a6c47f89        38 hours ago        /bin/sh -c #(nop) WORKDIR /app                  0B                  
57915f96905a        3 weeks ago         /bin/sh -c #(nop) WORKDIR /go                   0B                  
<missing>           3 weeks ago         /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B                  
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B                  
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV GOPATH=/go               0B                  
<missing>           3 weeks ago         /bin/sh -c set -eux;  apk add --no-cache --v…   305MB               
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.11.2    0B                  
<missing>           2 months ago        /bin/sh -c [ ! -e /etc/nsswitch.conf ] && ec…   17B                 
<missing>           2 months ago        /bin/sh -c apk add --no-cache   ca-certifica…   556kB               
<missing>           2 months ago        /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B                  
<missing>           2 months ago        /bin/sh -c #(nop) ADD file:25c10b1d1b41d46a1…   4.41MB
```

[docs](http://blog.arungupta.me/show-layers-of-docker-image/)
