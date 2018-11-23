## Dockerfile template

### FROM
```
FROM repository:version
```

### ENV
```
ENV NGINX_VERSION 1.11.10-1-jessie
```

### RUN
```
RUN some-commands \
  && more-commands \
  && even-more-commands-for-this-layer
```

### EXPOSE
```
EXPOSE 80 443
```

### CMD
```
CMD ["nginx", "-g", "daemon off;"]
```

### WORKDIR
```
/usr/share/nginx/html
```

### COPY
copys host to `WORKDIR`
```
COPY index.html index.html
```
