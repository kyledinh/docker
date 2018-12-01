## Demonstrate the usage of templates with "docker service create"


### Flags
* `--hostname`
* `--mount`
* `--env`

| Placeholder	| Description |
|-------------|-------------|
| .Service.ID	| Service ID |
| .Service.Name	| Service name |
| .Service.Labels	| Service labels |
| .Node.ID	| Node ID |
| .Node.Hostname	| Node Hostname |
| .Task.ID	| Task ID |
| .Task.Name	| Task name |
| .Task.Slot	| Task slot |

### Examples
```
docker service create --name hosttempl \
                        --hostname="{{.Node.Hostname}}-{{.Node.ID}}-{{.Service.Name}}"\
                         busybox top

va8ew30grofhjoychbr6iot8c

$ docker service ps va8ew30grofhjoychbr6iot8c

ID            NAME         IMAGE                                                                                   NODE          DESIRED STATE  CURRENT STATE               ERROR  PORTS
wo41w8hg8qan  hosttempl.1  busybox:latest@sha256:29f5d56d12684887bdfa50dcd29fc31eea4aaf4ad3bec43daf19026a7ce69912  2e7a8a9c4da2  Running        Running about a minute ago

$ docker inspect --format="{{.Config.Hostname}}" 2e7a8a9c4da2-wo41w8hg8qanxwjwsg4kxpprj-hosttempl

x3ti0erg11rjpg64m75kej2mz-hosttempl
```

[docs](https://docs.docker.com/engine/reference/commandline/service_create/#create-services-using-templates)
