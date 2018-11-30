## Modify an image to a single layers

### Usage
* `docker save [OPTIONS] IMAGE [IMAGE...]`

| Options | Desc |
|---------|------|
| --output, -o | Write to a file, instead of STDOUT |

### Example

```
$ docker save busybox > busybox.tar
$ ls -sh busybox.tar
2.7M busybox.tar

$ docker save --output busybox.tar busybox
$ ls -sh busybox.tar
2.7M busybox.tar

$ docker save -o fedora-all.tar fedora
$ docker save -o fedora-latest.tar fedora:latest

## Cherry-pick particular tags
$ docker save -o ubuntu.tar ubuntu:lucid ubuntu:saucy
```



[docs](https://docs.docker.com/engine/reference/commandline/save/)
