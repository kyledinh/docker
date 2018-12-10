## Identify the steps you would take to clean up unused images on a filesystem, also on DTR


### Prune images
* `docker image prune -a` - Removes all images without at least one container associated

| Options | Desc |
|---------|------|
| --all , -a	| Remove all unused images, not just dangling ones |
| --filter	 | Provide filter by key values `"key=value"`|
| --force , -f	 | Do not prompt for confirmation |

The following removes images created before 2017-01-04T00:00:00:
```
$ docker images --format 'table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.CreatedAt}}\t{{.Size}}'
REPOSITORY          TAG                 IMAGE ID            CREATED AT                      SIZE
foo                 latest              2f287ac753da        2017-01-04 13:42:23 -0800 PST   3.98 MB
alpine              latest              88e169ea8f46        2016-12-27 10:17:25 -0800 PST   3.98 MB
busybox             latest              e02e811dd08f        2016-10-07 14:03:58 -0700 PDT   1.09 MB

$ docker image prune -a --force --filter "until=2017-01-04T00:00:00"

Deleted Images:
untagged: alpine:latest
untagged: alpine@sha256:dfbd4a3a8ebca874ebd2474f044a0b33600d4523d03b0df76e5c5986cb02d7e8
untagged: busybox:latest
untagged: busybox@sha256:29f5d56d12684887bdfa50dcd29fc31eea4aaf4ad3bec43daf19026a7ce69912
deleted: sha256:e02e811dd08fd49e7f6032625495118e63f597eb150403d02e3238af1df240ba
deleted: sha256:e88b3f82283bc59d5e0df427c824e9f95557e661fcb0ea15fb0fb6f97760f9d9

Total reclaimed space: 1.093 MB

$ docker images --format 'table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.CreatedAt}}\t{{.Size}}'

REPOSITORY          TAG                 IMAGE ID            CREATED AT                      SIZE
foo                 latest              2f287ac753da        2017-01-04 13:42:23 -0800 PST   3.98 MB
```

[docs](https://docs.docker.com/engine/reference/commandline/image_prune/#usage)

identify-the-steps-you-would-take-to-clean-up-unused-images-on-a-filesystem-also-on-DTR.md
