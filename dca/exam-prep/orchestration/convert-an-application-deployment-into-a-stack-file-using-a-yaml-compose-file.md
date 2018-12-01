## Convert an application deployment into a stack file using a YAML compose file  

### Usage
* `docker stack deploy [OPTIONS] STACK`

| Options | Desc |
|---------|------|
| --compose-file , -c | path to compose file |
| --with-registry-auth | Send registry authentication details to Swarm agents |
| --prune | Prune services that are no longer referenced |
| --resolve-image | Query the registry to resolve image digest and supported platforms (“always”|”changed”|”never”) |

[docs](https://docs.docker.com/engine/reference/commandline/stack_deploy/)
