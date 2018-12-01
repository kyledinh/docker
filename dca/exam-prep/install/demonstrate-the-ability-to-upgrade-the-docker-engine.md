## Demonstrate the ability to upgrade the Docker engine

### for docker-engine
```
# add the new gpg key
$ sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# add new repo
$ sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
```  
Then you can smoothly upgrade to latest docker version
```
$ sudo apt-get update

# remove the old
$ sudo apt-get purge lxc-docker*

# install the new
$ sudo apt-get install docker-engine
```
And in the case that you don't want to install latest package then you can do something like below.

```
$ sudo apt-get install docker-engine=1.7.1-0~trusty
```

[docs](https://askubuntu.com/questions/472412/how-do-i-upgrade-docker)
