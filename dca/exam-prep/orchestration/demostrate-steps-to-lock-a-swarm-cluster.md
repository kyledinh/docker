## Demostrate steps to lock a swarm cluster

Command to lock a swarm cluster
* `docker swarm init --autolock`

Command to set autolock
* `docker swarm update --autolock=true`
* `docker swarm update --autolock=false`

Commands to unlock
* `docker swarm unlock-key`
```
To unlock a swarm manager after it restarts, run the `docker swarm unlock`
command and provide the following key:

    SWMKEY-1-8jDgbUNlJtUe5P/lcr9IXGVxqZpZUXPzd+qzcGp4ZYA

Please remember to store this key in a password manager, since without it you
will not be able to restart the manager.
```

Command to rotate key
* `docker swarm unlock-key --rotate`
```
Successfully rotated manager unlock key.

To unlock a swarm manager after it restarts, run the `docker swarm unlock`
command and provide the following key:

    SWMKEY-1-8jDgbUNlJtUe5P/lcr9IXGVxqZpZUXPzd+qzcGp4ZYA

Please remember to store this key in a password manager, since without it you
will not be able to restart the manager.
```

[docs](https://docs.docker.com/engine/swarm/swarm_manager_locking/)
