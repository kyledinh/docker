## Extend the instructions to run individual containers into running services under swarm

* `docker service create --replicas 1 --name helloworld alpine ping docker.com`
```
9uk4639qpg7npwf3fn2aasksr
```
* `docker service ls`
```
ID            NAME        SCALE  IMAGE   COMMAND
9uk4639qpg7n  helloworld  1/1    alpine  ping docker.com
```


* The `docker service create` command creates the service.
* The `--name` flag names the service `helloworld`.
* The `--replicas` flag specifies the desired state of 1 running instance.
* The arguments `alpine ping docker.com` define the service as an Alpine Linux container that executes the command `ping docker.com`.

[docs](https://docs.docker.com/engine/swarm/swarm-tutorial/deploy-service/)
