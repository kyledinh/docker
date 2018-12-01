## Add networks, publish ports

### Network drivers
* bridge
* host
* overlay
* macvlan
* none

Network driver summary
* User-defined bridge networks are best when you need multiple containers to communicate on the same Docker host.
* Host networks are best when the network stack should not be isolated from the Docker host, but you want other aspects of the container to be isolated.
* Overlay networks are best when you need containers running on different Docker hosts to communicate, or when multiple applications work together using swarm services.
* Macvlan networks are best when you are migrating from a VM setup or need your containers to look like physical hosts on your network, each with a unique MAC address.
* Third-party network plugins allow you to integrate Docker with specialized network stacks.

[docs](https://docs.docker.com/network/)
