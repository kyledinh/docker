## Sketch how a dockerized application communicates with legacy systems

### Published ports
By default, when you create a container, it does not publish any of its ports to the outside world. To make a port available to services outside of Docker, or to Docker containers which are not connected to the container’s network, use the `--publish` or `-p` flag. This creates a firewall rule which maps a container port to a port on the Docker host. Here are some examples.

| Flag | Description |
|------|-------------|
| -p 8080:80	| Map TCP port 80 in the container to port 8080 on the Docker host. |
| -p 192.168.1.100:8080:80	| Map TCP port 80 in the container to port 8080 on the Docker host for connections to host IP 192.168.1.100. |
| -p 8080:80/udp	| Map UDP port 80 in the container to port 8080 on the Docker host. |
| -p 8080:80/tcp -p 8080:80/udp	| Map TCP port 80 in the container to TCP port 8080 on the Docker host, and map UDP port 80 in the container to UDP port 8080 on the Docker host. |

[docs](https://docs.docker.com/config/containers/container-networking/)
