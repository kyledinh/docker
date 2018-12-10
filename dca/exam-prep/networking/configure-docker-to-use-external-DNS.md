## Configure Docker to use external DNS

### Use `--dns` flag
* `docker run --dns 10.0.0.2 busybox nslookup google.com`

### Edit the `daemon.json`

In  `/etc/docker/daemon.json` settings like:

```
{
    "dns": ["10.0.0.2", "8.8.8.8"]
}
```

then restart docker service  
* `sudo systemctl docker restart`

[docs](https://forums.docker.com/t/local-dns-or-public-dns-why-not-both-etc-docker-daemon-json/54544)

configure-docker-to-use-external-DNS.md
