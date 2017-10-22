# devlinux-img

This is a base Ubuntu 17.04 image that contains Go, Python 3.6 and Nodejs. The image is 875MB. This is the image I use for a linux vm to develop on my Mac laptop. It replaces my Vagrant/VirtualBox method I had used. (https://github.com/kyledinh/verkbox)

| Public Hub Repository                       |
|---------------------------------------------|
| https://hub.docker.com/r/kyledinh/devlinux/ |
| `docker pull kyledinh/devlinux`             |
| `docker run -it --rm (-v /Users/kyle/src:/opt/src) kyledinh/devlinux bash` |

The `$GOPATH` is set to `/opt`. I would attach my host's GOPATH to this directory and set a volume to `/opt/src`.

```
# flag in docker run command
-v /Users/kyle/src:/opt/src

# docker-compose.yml
  volumes:
    - /Users/kyle/src:/opt/src
```
