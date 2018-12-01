## Apply a file to create a docker images

### Usage
* `docker image load [OPTIONS]`

| Options | Desc |
|---------|------|
| --input , -i | Read from tar archive file, instead of STDIN |
| --quiet , -q | Suppress the load output |

### Example
```
docker save <ImageName or ImageID > filename.tar
docker save --output filename.tar <ImageName or ImageID>
docker load < filename.tar
```

[docs](https://docs.docker.com/engine/reference/commandline/image_load/)   
[example](https://gotechnies.com/save-load-docker-image/)
