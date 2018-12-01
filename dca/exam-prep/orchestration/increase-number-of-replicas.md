## Increase number of replicas

* `docker service create --mode global --name backend backend:latest`

* `docker service scale frontend=50`
* `docker service update --replicas=50 frontend`
* `docker service scale backend=3 frontend=5`

[docs](https://docs.docker.com/engine/reference/commandline/service_scale/)
