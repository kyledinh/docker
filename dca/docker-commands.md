## Common Commands
* https://docs.docker.com/engine/reference/commandline/docker/
* `docker pull | login | tag | push | run | create | stop | kill | logs`
* `docker container`
* `docker image`
* `docker service`
* `docker network`
* `docker stack`
* `docker swarm`
* `docker-compose`
* `docker-machine`

### Docker Management Commands:

| Commands    | Desc  |
|-------------|--------------------|
| container   | Manage containers
| image       | Manage images
| network     | Manage networks
| node        | Manage Swarm nodes
| service     | Manage services
| swarm       | Manage Swarm
| volume      | Manage volumes
| checkpoint  | Manage checkpoints
| config      | Manage Docker configs
| manifest    | Manage Docker image manifests and manifest lists
| plugin      | Manage plugins
| secret      | Manage Docker secrets
| system      | Manage Docker
| trust       | Manage trust on Docker images

### docker-compose

| Action Commands | Desc |
|-----------------|------|
| build              | Build or rebuild services
| bundle             | Generate a Docker bundle from the Compose file
| config             | Validate and view the Compose file
| create             | Create services
| down               | Stop and remove containers, networks, images, and volumes
| events             | Receive real time events from containers
| exec               | Execute a command in a running container
| kill               | Kill containers
| pause              | Pause services
| pull               | Pull service images
| push               | Push service images
| restart            | Restart services
| rm                 | Remove stopped containers
| run                | Run a one-off command
| scale              | Set number of containers for a service
| start              | Start services
| stop               | Stop services
| unpause            | Unpause services
| up                 | Create and start containers

| Info Commands | Desc |
|-----------------|------|
| help               | Get help on a command
| images             | List images
| logs               | View output from containers
| port               | Print the public port for a port binding
| ps                 | List containers
| top                | Display the running processes


| Options       | Desc |
|---------------|------|
| -f, --file FILE | Specify an alternate compose file (default: docker-compose.yml) |
| -p, --project-name NAME | Specify an alternate project name (default: directory name) |
| --verbose | Show more output |
| --log-level LEVEL | Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL) |
| --no-ansi | Do not print ANSI control characters |
| -v, --version | Print version and exit |
| -H, --host HOST | Daemon socket to connect to |
| --tls                       | Use TLS; implied by --tlsverify |
| --tlscacert CA_PATH         | Trust certs signed only by this CA |
| --tlscert CLIENT_CERT_PATH  | Path to TLS certificate file |
| --tlskey TLS_KEY_PATH       | Path to TLS key file |
| --tlsverify                 | Use TLS and verify the remote |
| --skip-hostname-check       | Don't check the daemon's hostname against the name specified in the client certificate |
| --project-directory PATH    | Specify an alternate working directory (default: the path of the Compose file) |
| --compatibility             | If set, Compose will attempt to convert deploy keys in v3 files to their non-Swarm equivalent |

### docker-machine

| Action Commands | Desc |
|-----------------|------|
| create	| Create a machine |
| kill    | Kill a machine |
| provision | Re-provision existing machines |
| regenerate-certs | Regenerate TLS Certificates for a machine |
| restart | Restart a machine |
| rm      | Remove a machine |
| ssh     | Log into or run a command on a machine with SSH. |
| scp     | Copy files between machines |
| mount   | Mount or unmount a directory from a machine with SSHFS. |
| start   | Start a machine |
| stop    | Stop a machine |
| upgrade | Upgrade a machine to the latest version of Docker |

| Info Commands | Desc |
|---------------|------|
| active	|	Print which machine is active |
| config        | Print the connection config for machine |
| env           | Display the commands to set up the environment for the Docker client |
| ls            | List machines |
| status  | Get the status of a machine |
| url     |	Get the URL of a machine |
| version | Show the Docker Machine version or a machine docker version |

| Options       | Desc |
|---------------|------|
| --debug, -D		| Enable debug mode |
| --storage-path, -s |"/Users/kyle/.docker/machine"	Configures storage path [$MACHINE_STORAGE_PATH] |
| --tls-ca-cert |	CA to verify remotes against [$MACHINE_TLS_CA_CERT] |
| --tls-ca-key |	Private key to generate certificates [$MACHINE_TLS_CA_KEY] |
| --tls-client-cert |	Client cert to use for TLS [$MACHINE_TLS_CLIENT_CERT] |
| --tls-client-key | Private key used in client TLS auth [$MACHINE_TLS_CLIENT_KEY] |
| --github-api-token | Token to use for requests to the Github API [$MACHINE_GITHUB_API_TOKEN] |
| --native-ssh | 	Use the native (Go-based) SSH implementation. [$MACHINE_NATIVE_SSH] |
| --bugsnag-api-token |	BugSnag API token for crash reporting [$MACHINE_BUGSNAG_API_TOKEN] |
| --help, -h	|	show help |
| --version, -v |	print the version
