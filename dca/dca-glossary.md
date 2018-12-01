## Glossary

* container - A container is a runtime instance of an image--what the image becomes in memory when executed (that is, an image with state, or a user process).
* docker-compose yml
* Dockerfile -
* DTR - Docker Trusted Registry - https://docs.docker.com/ee/dtr/
* image - An image is an executable package that includes everything needed to run an application--the code, a runtime, libraries, environment variables, and configuration files
* ingress  network - Port 4789 UDP for the container ingress network.
* Overlay network - runs on UDP port 4789
* RBAC - Role Base Access Control - used by UCP -  https://success.docker.com/article/rbac-example-overview
* RBAC Roles: Admin, Full Control, Restricted Control, View Only, No Access
* network drive -
* Raft Consensus Algorithm - used by manager nodes for node availability
* registry -
* routing mesh -  
* services - services are different blocks of a DISTRIBUTED computing application. Services are really just “containers in production.” A service only runs one image, but it codifies the way that image runs—what ports it should use, how many replicas of the container should run so the service has the capacity it needs.
* storage driver -
* swarm cluster - A swarm is a group of machines that are running Docker and joined into a cluster
* swarm schedule service tasks -
* UCP - Universal Control Plane - https://docs.docker.com/ee/ucp/
* UCP REST API
* VM - a virtual machine (VM) runs a full-blown “guest” operating system with virtual access to host resources through a hypervisor


## FILE SYSTEM

* certs `/etc/docker/certs.d/`
* cluster `/var/lib/docker/swarm`
* containers `/var/lib/docker/containers`
* layers `/var/lib/docker/aufs diff|layers|mnt`
