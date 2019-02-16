## Docker

CONFIG
* `/etc/docker/daemon.json`
* `/var/lib/docker/` - data is store on linux host

INFO
* `docker info`
* `docker stats`
* `docker logs [container]`
* `--format "{{}}"`

FILTERS
* id, name, label, exited, status, before, since, volume, network, publish, expose, health, isolation, is-task

FORMATS
* `"{{json .SomeKey}}"`
* `"table {{.SomeKey}}\t{{.OtherKey}}\t{{.ThatKey}}"`

ACTION
* `systemctl docker enable` - set docker to launch on boot

<hr>

## Images

INFO
* `docker image ls` `--filter "since:[image]"`
* `docker image inspect [image]` `--format {{json .SomeKey}}`
* `docker search [image]` `--filter stars=30` `--filter is-official=true`

ACTION
* `docker login`
* `docker pull [image]`
* `docker push [image]:[tag]`
* `docker tag [source-image]:[tag] [dest-image]:tag`
* `docker image save [source-image]:[tag] > backup.tar`
* `docker load --input backup.tar`
* `docker import backup.tar [dest-image]:tag`
* `docker build -t [image]:[tag] .` with a Dockerfile
* `docker image rm [image]`
* `docker image prune`

<hr>

## Containers

INFO
* `docker ps` `--filter`
* `docker container ls`
* `docker container inspect [container]` `--format "{{}}"`
* `docker container logs [container]` `--format "{{}}"`
* `docker logs --tail 100 [container]`

ACTION
* `docker create`
* `docker run [image]`
* `docker start|stop [container]`
* `docker container rm`
* `docker exec [container]` `-it` `/bin/bash`

DOCKER-COMPOSE
* `docker-compose up` with a yaml file
* `docker-compose down` with a yaml file

<hr>

## Volumes
INFO
* `docker volume ls`
* `docker volume inspect [volume]` `--format`

ACTION
* `docker volume create [volume]`
* `docker volume rm [volume]`

DRIVER TYPES
* local,

<hr>

## Networks

INFO
* `docker network ls`
* `docker network inspect [network]` `--format`


ACTION
* `docker network create [network]` `--driver [drive-type]` `--subnet [0.0.0.0/24]` `--gateway [0.0.0.0]`
* `docker network rm [network]`

DRIVER TYPES
* bridge, overlay, host

<hr>

## Swarm

INFO
* `docker swarm ca`
* `docker join-token manager|worker`

ACTION
* `docker swarm init --advertise-addr [0.0.0.0]`
* `docker swarm update --autolock=true`
* `docker swarm unlock`
* `docker swarm unlock-key --rotate`
* `docker swarm join --token [token]`
* `docker swarm leave`

UPDATE OPTIONS
* `--avaliability active|pause|drain`

<hr>

## Nodes

INFO
* `docker node ls`
* `docker node ps`
* `docker node inspect [node]`
* `docker node inspect self --pretty`

ACTION
* `docker node demote [node...]`
* `docker node promote [node...]`
* `docker node rm [node]`
* `docker node update`

UPDATE OPTIONS
* `--avaliability active|pause|drain`
* `--label-add [key=value,key=vale]`
* `--label-rm [key=value,key=vale]`
* `--role worker|manager`

<hr>

## Services

INFO
* `docker service ls`
* `docker service ps`
* `docker service inspect [service]`
* `docker service logs [service]`

ACTION
* `docker service create --name [service] [image]`
* `docker service scale [service]=# [service]=#`
* `docker service rm [service]`
* `docker service update --network-rm=ingress testweb`

CREATE OPTIONS

UPDATE OPTIONS

<hr>

## Stacks

INFO
* `docker stack ls`
* `docker stack ps [stack]`
* `docker stack services [stack]`

ACTION
* `docker stack deploy|up [stack]` `-c [compose-file]`
* `docker stack rm [stack]`

<hr>

## Other Subjects
* UCP
* DTR
* network drivers
* storage drivers
* Container Network Model
* Swarm
* Services - OADS
* Backup
* Security and Certs
* Dockerfile
* docker-compose yaml
