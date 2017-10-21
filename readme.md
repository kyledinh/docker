# Docker

| This repo contains my code, tools and references to help organize, use and develop with Docker.

Docker provides a set of tools to manage an IT infrastructure from source code to virtual machines instants (containers).

`docker build/run`
```
[ Dockerfile ]  -> [ image ] -> [ container ]
```

`docker-compose build/up/down`
```
                           -> [ imageA ] -> [ container-A1 ]
[ docker-compose.yml ]  --|                 [ container-A2 ]
                           -> [ imageB ] -> [ container-B1 ]
```


## Open Repos
Originally written with Vagrant/VirtualBox, now "dockerfied." The project creates a simple API in Go and Python versions.
* https://github.com/kyledinh/simpleapi

## References
* https://www.docker.com/docker-mac
* https://docs.docker.com/
* https://hub.docker.com/
