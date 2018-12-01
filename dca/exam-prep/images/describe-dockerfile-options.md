## Describe Dockerfile options

### ARG and FROM
Use the `FROM` to select a base image and `ARG` to define args for the Dockerfile

### RUN
Use `RUN` to execute a command on the image and save it as a layer

### CMD
Use `CMD` for a command to be executed on container creation, like launch the service

### LABEL

### EXPOSE
Use `EXPOSE` to define the ports need for the image

### ENV
Passes environment variables to the image/container

### ADD and COPY
`ADD` and `COPY` will copy files to the image. `ADD` will untar and can handle remote URLs.

### VOLUME
`VOLUME` defines/creates filesystem for the image/container

### WORKDIR
`WORKDIR` will create directories on the image


[docs](https://docs.docker.com/engine/reference/builder/#impact-on-build-caching)
