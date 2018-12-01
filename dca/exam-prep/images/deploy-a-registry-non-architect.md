## Deploy a registry (non-architect)

### Deploy a registry server

Before you can deploy a registry, you need to install Docker on the host. A registry is an instance of the registry image, and runs within Docker.

This topic provides basic information about deploying and configuring a registry. For an exhaustive list of configuration options, see the [configuration reference](https://docs.docker.com/registry/configuration/).

Run a local registry
Use a command like the following to start the registry container:

`$ docker run -d -p 5000:5000 --restart=always --name registry registry:2`

The registry is now ready to use.

[docs](https://docs.docker.com/registry/deploying/)
