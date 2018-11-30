## Inspect images and report specific attributes using filter and format

Use `docker inspect` to get JSON array of properties

### Get an container's IP address

`$ docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $INSTANCE_ID
`

### Get path to log file for container
`docker inspect --format='{{.LogPath}}' dcwash`


[docs](https://docs.docker.com/engine/reference/commandline/inspect/#extended-description)
