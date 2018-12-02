## Complete configuration of backups for UCP and DTR

### UCP Backup policy
As part of your backup policy you should regularly create backups of UCP. DTR is backed up independently. Learn about DTR backups and recovery.

To create a UCP backup, run the docker/ucp:2.2.14 backup command on a single UCP manager. This command creates a tar archive with the contents of all the volumes used by UCP to persist data and streams it to stdout. The backup doesn’t include the swarm-mode state, like service definitions and overlay network definitions.

You only need to run the backup command on a single UCP manager node. Since UCP stores the same data on all manager nodes, you only need to take periodic backups of a single manager node.

To create a consistent backup, the backup command temporarily stops the UCP containers running on the node where the backup is being performed. User resources, such as services, containers, and stacks are not affected by this operation and will continue operating as expected. Any long-lasting exec, logs, events, or attach operations on the affected manager node will be disconnected.

Additionally, if UCP is not configured for high availability, you will be temporarily unable to:

* Log in to the UCP Web UI
* Perform CLI operations using existing client bundles
To minimize the impact of the backup policy on your business, you should:

* Configure UCP for high availability. This allows load-balancing user requests across multiple UCP manager nodes.
* Schedule the backup to take place outside business hours.
### Backup command
The example below shows how to create a backup of a UCP manager node and verify its contents:
```
# Create a backup, encrypt it, and store it on /tmp/backup.tar
docker container run \
  --log-driver none --rm \
  --interactive \
  --name ucp \
  -v /var/run/docker.sock:/var/run/docker.sock \
  docker/ucp:2.2.14 backup \
  --id <ucp-instance-id> \
  --passphrase "secret" > /tmp/backup.tar

# Decrypt the backup and list its contents
$ gpg --decrypt /tmp/backup.tar | tar --list
```

Security-Enhanced Linux (SELinux)
For Docker EE 17.06 or higher, if the Docker engine has SELinux enabled, which is typical for RHEL hosts, you need to include --security-opt label=disable in the docker command:
```
$ docker container run --security-opt label=disable --log-driver none --rm -i --name ucp \
  -v /var/run/docker.sock:/var/run/docker.sock \
  docker/ucp:2.2.14 backup --interactive > /tmp/backup.tar
```

To find out whether SELinux is enabled in the engine, view the host’s /etc/docker/daemon.json file and search for the string "selinux-enabled":"true".

Restore UCP
To restore an existing UCP installation from a backup, you need to uninstall UCP from the swarm by using the uninstall-ucp command. Learn to uninstall UCP.

When restoring, make sure you use the same version of the docker/ucp image that you’ve used to create the backup. The example below shows how to restore UCP from an existing backup file, presumed to be located at /tmp/backup.tar:
```
$ docker container run --rm -i --name ucp \
  -v /var/run/docker.sock:/var/run/docker.sock  \
  docker/ucp:2.2.14 restore < /tmp/backup.tar
```  
If the backup file is encrypted with a passphrase, you will need to provide the passphrase to the restore operation:
```
$ docker container run --rm -i --name ucp \
  -v /var/run/docker.sock:/var/run/docker.sock  \
  docker/ucp:2.2.14 restore --passphrase "secret" < /tmp/backup.tar
```  
The restore command may also be invoked in interactive mode, in which case the backup file should be mounted to the container rather than streamed through stdin:
```
$ docker container run --rm -i --name ucp \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /tmp/backup.tar:/config/backup.tar \
  docker/ucp:2.2.14 restore -i
```  
UCP and Swarm
UCP restore recovers the following assets from the backup file:

* Users, teams, and permissions.
* All UCP configuration options available under Admin Settings, like the Docker EE subscription license, scheduling options, content trust, and authentication backends.

UCP restore does not include swarm assets such as cluster membership, services, networks, secrets, etc. Learn to backup a swarm.

There are two ways to restore UCP:

* On a manager node of an existing swarm which does not have UCP installed. In this case, UCP restore will use the existing swarm.
* On a docker engine that isn’t participating in a swarm. In this case, a new swarm is created and UCP is restored on top.

### Backup DTR data
To create a backup of DTR you need to:

* Backup image content
* Backup DTR metadata
You should always create backups from the same DTR replica, to ensure a smoother restore.

Backup image content
Since you can configure the storage backend that DTR uses to store images, the way you backup images depends on the storage backend you’re using.

If you’ve configured DTR to store images on the local filesystem or NFS mount, you can backup the images by using ssh to log into a node where DTR is running, and creating a tar archive of the dtr-registry volume:
```
sudo tar -cf backup-images.tar \
  $(dirname $(docker volume inspect --format '{{.Mountpoint}}' dtr-registry-<replica-id>))
```
If you’re using a different storage backend, follow the best practices recommended for that system.

Backup DTR metadata
To create a DTR backup, load your UCP client bundle, and run the following command, replacing the placeholders for the real values:
```
read -sp 'ucp password: ' UCP_PASSWORD; \
docker run --log-driver none -i --rm \
  --env UCP_PASSWORD=$UCP_PASSWORD \
  docker/dtr:2.3.9 backup \
  --ucp-url <ucp-url> \
  --ucp-insecure-tls \
  --ucp-username <ucp-username> \
  --existing-replica-id <replica-id> > backup-metadata.tar
```  
Where:

* <ucp-url> is the url you use to access UCP
* <ucp-username> is the username of a UCP administrator
* <replica-id> is the id of the DTR replica to backup

This prompts you for the UCP password, backups up the DTR metadata and saves the result into a tar archive. You can learn more about the supported flags in the reference documentation.

The backup command doesn’t stop DTR, so that you can take frequent backups without affecting your users. Also, the backup contains sensitive information like private keys, so you can encrypt the backup by running:

* `gpg --symmetric`
 
This prompts you for a password to encrypt the backup, copies the backup file and encrypts it.

[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/admin/backups-and-disaster-recovery/)


complete-configuration-of-backups-for-UCP-and-DTR.md
