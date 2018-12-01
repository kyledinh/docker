## Describe how image layers work

### What are the layers?
Docker containers are building blocks for applications. Each container is an image with a readable/writeable layer on top of a bunch of read-only layers.

These layers (also called intermediate images) are generated when the commands in the Dockerfile are executed during the Docker image build.

<img src="https://cdn-images-1.medium.com/max/1600/1*st_fZmKOMykQGF8kZKglvA.png" />

[docs](https://medium.com/@jessgreb01/digging-into-docker-layers-c22f948ed612)
