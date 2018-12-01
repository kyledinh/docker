## State the differences between running a container vs running a services

A container is an instance of an image, a service can be instances of containers

In short: Docker service is used mostly when you configured the master node with Docker swarm so that docker containers will run in a distributed environment and it can be easily managed.

<img src="https://docs.docker.com/engine/swarm/images/services-diagram.png" />

Docker run: The docker run command first creates a writeable container layer over the specified image, and then starts it using the specified command.

That is, docker run is equivalent to the API /containers/create then /containers/(id)/start

source: https://docs.docker.com/engine/reference/commandline/run/#parent-command

<img src="https://docs.docker.com/engine/swarm/images/service-lifecycle.png" />

Docker service: Docker service will be the image for a microservice within the context of some larger application. Examples of services might include an HTTP server, a database, or any other type of executable program that you wish to run in a distributed environment.

When you create a service, you specify which container image to use and which commands to execute inside running containers. You also define options for the service including:

* the port where the swarm will make the service available outside the swarm
* an overlay network for the service to connect to other services in the swarm
* CPU and memory limits and reservations
* a rolling update policy
* the number of replicas of the image to run in the swarm
