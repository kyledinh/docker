# Docker Developer Guide

## Community Edition for Mac
* download : https://store.docker.com/editions/community/docker-ce-desktop-mac
* doc : https://docs.docker.com/docker-for-mac/

Current inuse version
```
Docker version 17.09.0-ce, build afdb6d4
docker-compose version 1.16.1, build 6d1ac21
docker-machine version 0.12.2, build 9371605
```
### Docker Overview
Docker provides a set of tools to manage an IT infrastructure from source code to virtual machines instants (containers).
#### `docker build/run`
```
[ Dockerfile ]  -> [ image ] -> [ container ]
```

#### `docker-compose build/up/down`
```
                           -> [ imageA ] -> [ container-A1 ]
[ docker-compose.yml ]  --|                 [ container-A2 ]
                           -> [ imageB ] -> [ container-B1 ]
```

## Common Commands
* https://docs.docker.com/engine/reference/commandline/docker/

| Container Commands | Desc |
|--------------------|------|
| docker version     |      |
| docker ps          | # View running containers |
| docker stats       | # Live stream usage stats |

| Container Commands | Desc |
|--------------------|------|
| docker inspect `container-id`  | json desc of container |
| docker top `container-id`   | display running processes |
| docker stats `container-id` | |
| docker logs `container-id`  | |
| docker port `container-id`  | |
| docker run -rm -p 4000:80 `image-name`  |# Run "image-name" will remove container when exited|
| docker run -d -p 4000:80 `image-name` |# Same thing, but in detached mode|
| docker run -it -p 4000:80 `image-name` |# with a TTY and interactive |
| docker start `container-id` | |
| docker stop `container-id` | |
| docker ps -q &#124; xargs docker kill | # kill all containers |
| docker attach `container-id` | `Ctrl+p Ctrl+q` to leave container to host OS |
| docker exec -it `container-id` bash | # ssh into a container |
| docker cp somelocaldir/. `container-name`:dir/. | # cp directory content from host to container |
| docker container ls -a |# List all containers, even those not running|
| docker container stop `hash` |# Gracefully stop the specified container|
| docker container kill `hash` |# Force shutdown of the specified container|
| docker container rm `hash` |# Remove specified container from this machine|
| docker container rm $(docker container ls -a -q) |# Remove all containers|
| docker container prune | # Remove all stopped containers |
| docker rmi $(docker images &#124; grep "^&lt;none&gt;" &#124; awk "{print $3}") | # Remove all None containers |

| Image Commands | Desc |
|----------------|------|
| docker build -t `image-name` .  |# Create image using this directory's Dockerfile|
| docker image tag `src-image:version` `new-tag:version` | |
| docker image ls -a |# List all images on this machine|
| docker image rm `image-name` |# Remove specified image from this machine|
| docker image rm $(docker image ls -a -q)   |# Remove all images from this machine|

| Network Commands | Desc |
|--------------------|------|
| docker network ls  |      |
| docker network inspect `network-name` | |
| docker network create --driver | |
| docker network connect | |
| docker network disconnect | |

| Docker Compose Commands | Desc |
|-------------------------|------|
| docker-compose build | |
| docker-compose up | |
| docker-compose down | |
| docker-compose kill | stop containers |
| docker-compose rm | erase stopped containers |
| docker-compose ps | #Lists the containers for yml file |

| Docker Swarm Commands | Desc |
|-------------------------|------|
| docker swarm (init)| |
| docker node | |
| docker service | |
| docker stack | |
| docker secret | |

| Docker Hub Commands | Desc |
|---------------------|------|
| docker login |# Log in this CLI session using your Docker credentials|
| docker tag `image-name` username/repository:tag |# Tag <image> for upload to registry|
| docker push username/repository:tag |# Upload tagged image to registry|
| docker run username/repository:tag |# Run image from a registry|
