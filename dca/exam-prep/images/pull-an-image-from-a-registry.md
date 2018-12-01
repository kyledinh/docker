## Pull an image from a registry

### Usage
`docker pull [OPTIONS] NAME[:TAG|@DIGEST]`

| Options |	Description |
|---------|-------------|
| --all-tags , -a		| Download all tagged images in the repository |
| --disable-content-trust	|	Skip image verification |

### Pull from a different registry
By default, docker pull pulls images from Docker Hub. It is also possible to manually specify the path of a registry to pull from. For example, if you have set up a local registry, you can specify its path to pull from it. A registry path is similar to a URL, but does not contain a protocol specifier (https://).

The following command pulls the testing/test-image image from a local registry listening on port 5000 (myregistry.local:5000):

* `docker pull myregistry.local:5000/testing/test-image`

[docs](https://docs.docker.com/engine/reference/commandline/pull/)
