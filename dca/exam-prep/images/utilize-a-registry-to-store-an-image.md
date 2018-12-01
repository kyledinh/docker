## Utilize a registry to store an images

### Usage
`docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]`

```
docker tag datawasher kyledinh/datawasher:39
docker push kyledinh/datawasher:39
```

or by image ID

```
docker image ls -a
docker tag 285bb4daa83b kyledinh/datawasher:39
```

[docs](https://docs.docker.com/engine/reference/commandline/tag/)
