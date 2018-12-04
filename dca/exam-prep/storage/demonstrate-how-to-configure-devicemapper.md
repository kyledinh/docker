## Demonstrate how to configure devicemapper

Configure Docker with the devicemapper storage driver
Before following these procedures, you must first meet all the prerequisites.

Configure loop-lvm mode for testing
This configuration is only appropriate for testing. Loopback devices are slow and resource-intensive, and they require you to create file on disk at specific sizes. They can also introduce race conditions. They are available for testing because the setup is easier.

For production systems, see Configure direct-lvm mode for production.

* Stop Docker.
```
$ sudo systemctl stop docker
```
* Edit `/etc/docker/daemon.json`. If it does not yet exist, create it. Assuming that the file was empty, add the following contents.

{
  "storage-driver": "devicemapper"
}
See all storage options for each storage driver:

* Stable
* Edge

Docker does not start if the daemon.json file contains badly-formed JSON.

* Start Docker.
```
$ sudo systemctl start docker
```

* Verify that the daemon is using the devicemapper storage driver. Use the docker info command and look for Storage Driver.

```
$ docker info

  Containers: 0
    Running: 0
    Paused: 0
    Stopped: 0
  Images: 0
  Server Version: 17.03.1-ce
  Storage Driver: devicemapper
  Pool Name: docker-202:1-8413957-pool
  Pool Blocksize: 65.54 kB
  Base Device Size: 10.74 GB
  Backing Filesystem: xfs
  Data file: /dev/loop0
  Metadata file: /dev/loop1
  Data Space Used: 11.8 MB
  Data Space Total: 107.4 GB
  Data Space Available: 7.44 GB
  Metadata Space Used: 581.6 kB
  Metadata Space Total: 2.147 GB
  Metadata Space Available: 2.147 GB
  Thin Pool Minimum Free Space: 10.74 GB
  Udev Sync Supported: true
  Deferred Removal Enabled: false
  Deferred Deletion Enabled: false
  Deferred Deleted Device Count: 0
  Data loop file: /var/lib/docker/devicemapper/data
  Metadata loop file: /var/lib/docker/devicemapper/metadata
  Library Version: 1.02.135-RHEL7 (2016-11-16)
<output truncated>
```

This host is running in loop-lvm mode, which is not supported on production systems. This is indicated by the fact that the Data loop file and a Metadata loop file are on files under /var/lib/docker/devicemapper. These are loopback-mounted sparse files. For production systems, see Configure direct-lvm mode for production.


[docs](https://docs.docker.com/storage/storagedriver/device-mapper-driver/)

demonstrate-how-to-configure-devicemapper.md
