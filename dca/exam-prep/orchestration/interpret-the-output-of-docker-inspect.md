## Interpret the output of docker inspect commands

* `docker service inspect <SERVICE-ID>`  JSON output
* `docker service inspect --pretty <SERVICE-ID>` not in JSON format

```
ID:		9uk4639qpg7npwf3fn2aasksr
Name:		helloworld
Service Mode:	REPLICATED
 Replicas:		1
Placement:
UpdateConfig:
 Parallelism:	1
ContainerSpec:
 Image:		alpine
 Args:	ping docker.com
Resources:
Endpoint Mode:  vip
```

* Use `--format {{json .SomeKey.SubKey}}`

[doc](https://docs.docker.com/engine/swarm/swarm-tutorial/inspect-service/)
