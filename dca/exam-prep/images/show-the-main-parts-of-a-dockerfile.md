## Show the main parts of a Dockerfile

* Use `FROM` to select a base image.
* Use `RUN` to add layers to the image
* Use `WORKDIR` to add/select directories on the image
* Use `EXPOSE` to alert the ports used by the image
* Use `CMD` to a command to executed on container Creation

example:
```
CMD    ["x11vnc", "-forever", "-usepw", "-create"]
```


[docs](https://docs.docker.com/engine/reference/builder/#dockerfile-examples)
