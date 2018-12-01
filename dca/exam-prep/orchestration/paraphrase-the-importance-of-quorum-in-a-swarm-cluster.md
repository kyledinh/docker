## Paraphrase the importance of quorum in a swarm cluster

Raft tolerates up to `(N-1)/2` failures and requires a majority or quorum of `(N/2)+1` members to agree on values proposed to the cluster. This means that in a cluster of 5 Managers running Raft, if 3 nodes are unavailable, the system cannot process any more requests to schedule additional tasks. The existing tasks keep running but the scheduler cannot rebalance tasks to cope with failures if the manager set is not healthy.

The implementation of the consensus algorithm in swarm mode means it features the properties inherent to distributed systems:

* agreement on values in a fault tolerant system. (Refer to FLP impossibility theorem and the Raft Consensus Algorithm paper)
* mutual exclusion through the leader election process
* cluster membership management
* globally consistent object sequencing and CAS (compare-and-swap) primitives

[docs](https://docs.docker.com/engine/swarm/raft/)
