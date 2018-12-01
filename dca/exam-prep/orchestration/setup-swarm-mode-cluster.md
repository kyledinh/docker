## Setup Swarm Mode Cluster

Use play-with-docker.com to test/tutorial.

### Command

* Locally - `docker swarm init`
* 3 Node Swarm - `docker swarm init --advertise-addr 192.168.0.33`
* Use `docker swarm join-token manager` to display the join token
* Use `docker swarm join <options>` for other nodes to join the swarm


```
Swarm initialized: current node (yzr693y2a61b6g4jesekulh6z) is now a manager.

To add a worker to this swarm, run the following command:
  docker swarm join --token SWMTKN-1-040antdxq4stusybkrofgcg18kp61cklrj6lemaaqkc4s4l4a7-7grfq7r9h2l0814kuvvlxejvq 192.168.0.33:2377
```

### Protocol and ports
* TCP port 2377 for cluster management communications
* TCP and UDP port 7946 for communication among nodes
* UDP port 4789 for overlay network traffic

[docs](https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/)   
[tutorial](https://docs.docker.com/engine/swarm/swarm-tutorial/)
