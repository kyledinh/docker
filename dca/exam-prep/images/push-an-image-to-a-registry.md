## Push an image to a registry

### Usage
`docker push [OPTIONS] NAME[:TAG]`

| Options | Description |
|---------|-------------|
| --disable-content-trust	|	Skip image signing |

### Example
```
docker tag rhel-httpd registry-host:5000/myadmin/rhel-httpd
docker push registry-host:5000/myadmin/rhel-httpd
```

[docs](https://docs.docker.com/engine/reference/commandline/push/)
