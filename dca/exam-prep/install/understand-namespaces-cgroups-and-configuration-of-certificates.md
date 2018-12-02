## Understand namespaces, cgroups, and configuration of certificates

### Namespaces
Docker uses a technology called namespaces to provide the isolated workspace called the container. When you run a container, Docker creates a set of namespaces for that container.

These namespaces provide a layer of isolation. Each aspect of a container runs in a separate namespace and its access is limited to that namespace.

Docker Engine uses namespaces such as the following on Linux:

* The pid namespace: Process isolation (PID: Process ID).
* The net namespace: Managing network interfaces (NET: Networking).
* The ipc namespace: Managing access to IPC resources (IPC: InterProcess Communication).
* The mnt namespace: Managing filesystem mount points (MNT: Mount).
* The uts namespace: Isolating kernel and version identifiers. (UTS: Unix Timesharing System).

### Control groups
Docker Engine on Linux also relies on another technology called control groups (cgroups). A cgroup limits an application to a specific set of resources. Control groups allow Docker Engine to share available hardware resources to containers and optionally enforce limits and constraints. For example, you can limit the memory available to a specific container.

[docs](https://docs.docker.com/engine/docker-overview/#namespaces)
