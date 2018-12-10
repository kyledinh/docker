## Demonstrate how storage can be used across cluster nodes

Use Volume plugins

| Plugin	 | Description |
|----------|-------------|
| Azure File | Storage plugin	Lets you mount Microsoft Azure File Storage shares to Docker containers as volumes using the SMB 3.0 protocol. Learn more. |
| [Blockbridge plugin](https://github.com/blockbridge/blockbridge-docker-volume)	| A volume plugin that provides access to an extensible set of container-based persistent storage options. It supports single and multi-host Docker environments with features that include tenant isolation, automated provisioning, encryption, secure deletion, snapshots and QoS. |
| [DigitalOcean Block Storage plugin](https://github.com/omallo/docker-volume-plugin-dostorage)	| Integrates DigitalOcean’s [block storage solution](https://www.digitalocean.com/products/block-storage/) into the Docker ecosystem by automatically attaching a given block storage volume to a DigitalOcean droplet and making the contents of the volume available to Docker containers running on that droplet. |
| [Local Persist Plugin](https://github.com/CWSpear/local-persist)	| A volume plugin that extends the default local driver’s functionality by allowing you specify a mountpoint anywhere on the host, which enables the files to always persist, even if the volume is removed via `docker volume rm`. |



[docs](https://docs.docker.com/engine/extend/legacy_plugins/#volume-plugins)

demonstrate-how-storage-can-be-used-across-cluster-nodes.md
