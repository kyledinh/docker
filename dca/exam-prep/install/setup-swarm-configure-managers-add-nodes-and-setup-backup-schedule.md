## Setup swarm, configure managers, add nodes, and setup backup schedule

### Configure the manager to advertise on a static IP address
When initiating a swarm, you must specify the --advertise-addr flag to advertise your address to other manager nodes in the swarm. For more information, see Run Docker Engine in swarm mode. Because manager nodes are meant to be a stable component of the infrastructure, you should use a fixed IP address for the advertise address to prevent the swarm from becoming unstable on machine reboot.

If the whole swarm restarts and every manager node subsequently gets a new IP address, there is no way for any node to contact an existing manager. Therefore the swarm is hung while nodes try to contact one another at their old IP addresses.

Dynamic IP addresses are OK for worker nodes.

### Add manager nodes for fault tolerance
You should maintain an odd number of managers in the swarm to support manager node failures. Having an odd number of managers ensures that during a network partition, there is a higher chance that the quorum remains available to process requests if the network is partitioned into two sets. Keeping the quorum is not guaranteed if you encounter more than two network partitions.

| Swarm Size	| Majority	| Fault Tolerance |
|---|---|---|
| 1	| 1	| 0	|
| 2	| 2	| 0	|
| 3	| 2	| 1	|
| 4	| 3	| 1	|
| 5	| 3	| 2	|
| 6	| 4	| 2	|
| 7	| 4	| 3	|
| 8	| 5	| 3	|
| 9	| 5	| 4	|

For example, in a swarm with 5 nodes, if you lose 3 nodes, you don’t have a quorum. Therefore you can’t add or remove nodes until you recover one of the unavailable manager nodes or recover the swarm with disaster recovery commands. See Recover from disaster.

While it is possible to scale a swarm down to a single manager node, it is impossible to demote the last manager node. This ensures you maintain access to the swarm and that the swarm can still process requests. Scaling down to a single manager is an unsafe operation and is not recommended. If the last node leaves the swarm unexpectedly during the demote operation, the swarm becomes unavailable until you reboot the node or restart with --force-new-cluster.

You manage swarm membership with the docker swarm and docker node subsystems. Refer to Add nodes to a swarm for more information on how to add worker nodes and promote a worker node to be a manager.

#### Distribute manager nodes
In addition to maintaining an odd number of manager nodes, pay attention to datacenter topology when placing managers. For optimal fault-tolerance, distribute manager nodes across a minimum of 3 availability-zones to support failures of an entire set of machines or common maintenance scenarios. If you suffer a failure in any of those zones, the swarm should maintain the quorum of manager nodes available to process requests and rebalance workloads.

| Swarm manager nodes	|	Repartition (on 3 Availability zones)	|
|---|-------|
| 3	|	1-1-1	|
| 5	|	2-2-1	|
| 7	|	3-2-2	|
| 9	|	3-3-3	|

#### Run manager-only nodes
By default manager nodes also act as a worker nodes. This means the scheduler can assign tasks to a manager node. For small and non-critical swarms assigning tasks to managers is relatively low-risk as long as you schedule services using resource constraints for cpu and memory.

However, because manager nodes use the Raft consensus algorithm to replicate data in a consistent way, they are sensitive to resource starvation. You should isolate managers in your swarm from processes that might block swarm operations like swarm heartbeat or leader elections.

To avoid interference with manager node operation, you can drain manager nodes to make them unavailable as worker nodes:

* `docker node update --availability drain <NODE>`

When you drain a node, the scheduler reassigns any tasks running on the node to other available worker nodes in the swarm. It also prevents the scheduler from assigning tasks to the node.

#### Add worker nodes for load balancing
Add nodes to the swarm to balance your swarm’s load. Replicated service tasks are distributed across the swarm as evenly as possible over time, as long as the worker nodes are matched to the requirements of the services. When limiting a service to run on only specific types of nodes, such as nodes with a specific number of CPUs or amount of memory, remember that worker nodes that do not meet these requirements cannot run these tasks.


### Back up the swarm
Docker manager nodes store the swarm state and manager logs in the `/var/lib/docker/swarm/` directory. In 1.13 and higher, this data includes the keys used to encrypt the Raft logs. Without these keys, you cannot restore the swarm.

You can back up the swarm using any manager. Use the following procedure.

* If the swarm has auto-lock enabled, you need the unlock key to restore the swarm from backup. Retrieve the unlock key if necessary and store it in a safe location. If you are unsure, read Lock your swarm to protect its encryption key.

* Stop Docker on the manager before backing up the data, so that no data is being changed during the backup. It is possible to take a backup while the manager is running (a “hot” backup), but this is not recommended and your results are less predictable when restoring. While the manager is down, other nodes continue generating swarm data that is not part of this backup.

> Note: Be sure to maintain the quorum of swarm managers. During the time that a manager is shut down, your swarm is more vulnerable to losing the quorum if further nodes are lost. The number of managers you run is a trade-off. If you regularly take down managers to do backups, consider running a 5-manager swarm, so that you can lose an additional manager while the backup is running, without disrupting your services.

* Back up the entire `/var/lib/docker/swarm` directory.

* Restart the manager.


[docs](https://docs.docker.com/engine/swarm/admin_guide/)
