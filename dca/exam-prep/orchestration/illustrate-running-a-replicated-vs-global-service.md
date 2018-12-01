## Illustrate running a replicated vs global service

There are two types of service deployments, replicated and global.

For a replicated service, you specify the number of identical tasks you want to run. For example, you decide to deploy an HTTP service with three replicas, each serving the same content.

A global service is a service that runs one task on every node. There is no pre-specified number of tasks. Each time you add a node to the swarm, the orchestrator creates a task and the scheduler assigns the task to the new node. Good candidates for global services are monitoring agents, an anti-virus scanners or other types of containers that you want to run on every node in the swarm.

The diagram below shows a three-service replica in yellow and a global service in gray.

<img src="https://docs.docker.com/engine/swarm/images/replicated-vs-global.png" />

[docs](https://docs.docker.com/engine/swarm/how-swarm-mode-works/services/#replicated-and-global-services)
