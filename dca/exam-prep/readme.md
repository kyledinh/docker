This study guide is based on https://github.com/Evalle/DCA which is based on the [DCA Study Guide PDF](https://docker.cdn.prismic.io/docker%2Fa2d454ff-b2eb-4e9f-af0e-533759119eee_dca+study+guide+v1.0.1.pdf). I left the original links to documentation in `| docs` and my own work in the main link.

## Table of Contents:
1. [Orchestration](https://github.com/kyledinh/kodex/blob/master/docker/prep/readme.md#domain-1-orchestration-25-of-exam)
2. [Image Creation, Management, and Registry](https://github.com/kyledinh/kodex/blob/master/docker/prep/readme.md#domain-2-image-creation-management-and-registry-20-of-exam)
3. [Installation and Configuration](https://github.com/kyledinh/kodex/blob/master/docker/prep/readme.md#domain-3-installation-and-configuration-15-of-exam)
4. [Networking](https://github.com/kyledinh/kodex/blob/master/docker/prep/readme.md#domain-4-networking-15-of-exam)
5. [Security](https://github.com/kyledinh/kodex/blob/master/docker/prep/readme.md#domain-5-security-15-of-exam)
6. [Storage and Volumes](https://github.com/kyledinh/kodex/blob/master/docker/prep/readme.md#domain-6-storage-and-volumes-10-of-exam)


### Domain 1: Orchestration (25% of exam)
- [Complete the setup of a swarm mode cluster, with managers and worker nodes](orchestration/setup-swarm-mode-cluster.md) |  [docs](https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm/)
- [State the differences between running a container vs running a service](orchestration/state-the-differences-between-running-a-container-vs-running-a-service.md) |
[docs](https://stackoverflow.com/a/43408904)
- [Demonstrate steps to lock a swarm cluster](orchestration/demostrate-steps-to-lock-a-swarm-cluster.md) |
[docs](https://docs.docker.com/engine/swarm/swarm_manager_locking/)
- [Extend the instructions to run individual containers into running services under swarm](orchestration/extend-the-instructions-to-run-individual-containers-into-running-services-under-swarm.md) |
[docs](https://docs.docker.com/engine/swarm/swarm-tutorial/deploy-service/)
- [Interpret the output of "docker inspect" commands](orchestration/interpret-the-output-of-docker-inspect.md) |
[docs](https://docs.docker.com/engine/swarm/swarm-tutorial/inspect-service/)
- [Convert an application deployment into a stack file using a YAML compose file with
"docker stack deploy"](orchestration/convert-an-application-deployment-into-a-stack-file-using-a-yaml-compose-file.md) |
[docs](https://docs.docker.com/engine/reference/commandline/stack_deploy/)
- [Manipulate a running stack of services](orchestration/manipulate-a-running-stack-of-services.md) |
[docs](https://docs.docker.com/engine/reference/commandline/stack_services/#related-commands)
- [Increase number of replicas](orchestration/increase-number-of-replicas.md) |
[docs](https://docs.docker.com/engine/reference/commandline/service_scale/)
- [Illustrate running a replicated vs global service](orchestration/) |
[docs](https://docs.docker.com/engine/swarm/how-swarm-mode-works/services/#replicated-and-global-services)
- [Mount volumes](orchestration/mount-volumes.md) |
[docs](https://docs.docker.com/storage/volumes/)
- [Add networks, publish ports](orchestration/add-networks-publish-ports.md) |
[docs](https://docs.docker.com/network/)
- [Identify the steps needed to troubleshoot a service not deploying](orchestration/identity-the-steps-needed-to-troubleshoot-a-service-not-deploying.md) |
[docs](https://docs.docker.com/engine/swarm/swarm-tutorial/deploy-service/)
- [Apply node labels to demonstrate placement of tasks](orchestration/apply-node-labels-to-demonstrate-placement-of-tasks.md) |
[docs](https://docs.docker.com/engine/reference/commandline/node_update/)
- [Sketch how a Dockerized application communicates with legacy systems](orchestration/sketch-how-a-dockerized-application-communicates-with-legacy-systems.md) |
[docs](https://docs.docker.com/config/containers/container-networking/)
- [Paraphrase the importance of quorum in a swarm cluster](orchestration/paraphrase-the-importance-of-quorum-in-a-swarm-cluster.md) |
[docs](https://docs.docker.com/engine/swarm/raft/)
- [Demonstrate the usage of templates with "docker service create"](orchestration/demostrate-the-usage-of-templates-with-docker-service-create.md) | [docs](https://docs.docker.com/engine/reference/commandline/service_create/#create-services-using-templates)

### Domain 2: Image Creation, Management, and Registry (20% of exam)
- [Describe Dockerfile options(add, copy, volumes, expose, entrypoint, etc)](images/describe-dockerfile-options.md) |
[docs](https://docs.docker.com/engine/reference/builder/#from)
- [Show the main parts of a Dockerfile](images/show-the-main-parts-of-a-dockerfile.md) |
[docs](https://docs.docker.com/engine/reference/builder/#dockerfile-examples)
- [Give examples on how to create an efficient image via a Dockerfile](images/give-examples-on-how-to-create-an-efficient-image-via-a-Dockerfile.md) |
[docs](https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/)
- [Use CLI commands such as list, delete, prune, rmi, etc to manage images](images/use-cli-commands-such-as-list-delete-prune-rmi-etc-to-manage-images.md) |
[docs](https://docs.docker.com/engine/reference/commandline/image/#usage)
- [Inspect images and report specific attributes using filter and format](images/inspect-images-and-report-specific-attributes-using-filter-and-format.md) |
[docs](https://docs.docker.com/engine/reference/commandline/inspect/#extended-description)
- [Demonstrate tagging an image](images/demonstrate-tagging-an-image.md) |
[docs](https://docs.docker.com/engine/reference/commandline/tag/)
- [Utilize a registry to store an image](images/utilize-a-registry-to-store-an-image.md) |
[docs](https://docs.docker.com/registry/deploying/#copy-an-image-from-docker-hub-to-your-registry)
- [Display layers of a Docker image](images/display-layers-of-a-docker-image.md) |
[docs](http://blog.arungupta.me/show-layers-of-docker-image/)
- [Apply a file to create a Docker image](images/apply-a-file-to-create-a-docker-image.md) |
[docs](https://docs.docker.com/engine/reference/commandline/image_load/)
- [Modify an image to a single layer](images/modify-an-image-to-a-single-layer.md) |
[docs](https://docs.docker.com/engine/reference/commandline/save/)
- [Describe how image layers work](images/describe-how-image-layers-work.md) |
[docs](https://medium.com/@jessgreb01/digging-into-docker-layers-c22f948ed612)
- [Deploy a registry (not architect)](images/deploy-a-registry-non-architect.md) |
[docs](https://docs.docker.com/registry/deploying/)
- [Configure a registry](images/configure-a-registry.md) |
[docs](https://docs.docker.com/registry/configuration/)
- [Log into a registry](images/log-into-a-registry.md) |
[docs](https://docs.docker.com/engine/reference/commandline/login/#parent-command)
- [Utilize search in a registry](images/utilize-search-in-a-registry.md) |
[docs](https://docs.docker.com/engine/reference/commandline/search/)
- [Tag an image](images/tag-an-image.md) |
[docs](https://docs.docker.com/engine/reference/commandline/tag/)
- [Push an image to a registry](images/push-an-image-to-a-registry.md) |
[docs](https://docs.docker.com/engine/reference/commandline/push/)
- [Sign an image in a registry](images/sign-an-image-in-a-registry.md) |
[docs](https://docs.docker.com/datacenter/dtr/2.4/guides/user/manage-images/sign-images/)
- [Pull an image from a registry](images/pull-an-image-from-a-registry.md) |
[docs](https://docs.docker.com/engine/reference/commandline/pull/)
- [Describe how image deletion works](images/describe-how-image-deletion-works.md) |
[docs](https://docs.docker.com/engine/reference/commandline/rmi/)
- [Delete an image from a registry](images/delete-an-image-from-a-registry.md) |
[docs](https://docs.docker.com/datacenter/dtr/2.0/repos-and-images/delete-an-image/)

### Domain 3: Installation and Configuration (15% of exam)
- [Demonstrate the ability to upgrade the Docker engine]() |
[docs](https://askubuntu.com/questions/472412/how-do-i-upgrade-docker)
- [Complete setup of repo, select a storage driver, and complete installation of Docker
engine on multiple platforms]() |
[docs](https://docs.docker.com/install/#server)
- [Configure logging drivers (splunk, journald, etc)]() |
[docs](https://docs.docker.com/engine/admin/logging/overview/)
- [Setup swarm, configure managers, add nodes, and setup backup schedule]() |
[docs](https://docs.docker.com/engine/swarm/admin_guide/)
- [Create and manager user and teams]() |
[docs](https://docs.docker.com/datacenter/dtr/2.4/guides/admin/manage-users/create-and-manage-teams/)
- [Interpret errors to troubleshoot installation issues without assistance]() |
[docs](https://docs.docker.com/config/daemon/)
- [Outline the sizing requirements prior to installation]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/admin/install/system-requirements/#hardware-and-software-requirements)
- [Understand namespaces, cgroups, and configuration of certificates]() |
[docs](https://docs.docker.com/engine/docker-overview/#namespaces)
- [Use certificate-based client-server authentication to ensure a Docker daemon has the
rights to access images on a registry]() | [docs](https://docs.docker.com/engine/security/certificates/)
- Consistently repeat steps to deploy Docker engine, UCP, and DTR on AWS and on
premises in an HA config [1,](https://docs.docker.com/datacenter/dtr/2.3/guides/admin/install/) [2,](https://docs.docker.com/ee/ucp/) [3](https://docs.docker.com/docker-for-aws/)
- [Complete configuration of backups for UCP and DTR]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/admin/backups-and-disaster-recovery/)
- [Configure the Docker daemon to start on boot]() |
[docs](https://docs.docker.com/engine/installation/linux/linux-postinstall//)

### Domain 4: Networking (15% of exam)
- [Create a Docker bridge network for a developer to use for their containers]() |
[docs](https://docs.docker.com/engine/userguide/networking/#user-defined-networks)
- [Troubleshoot container and engine logs to understand a connectivity issue between
containers]() |
[docs](https://docs.docker.com/docker-for-windows/troubleshoot/)
- [Publish a port so that an application is accessible externally]() |
[docs](https://github.com/wsargent/docker-cheat-sheet#exposing-ports)
- [Identify which IP and port a container is externally accessible on]() |
[docs](https://docs.docker.com/engine/reference/commandline/port/#examples)
- [Describe the different types and use cases for the built-in network drivers]() |
[docs](https://blog.docker.com/2016/12/understanding-docker-networking-drivers-use-cases/)
- [Understand the Container Network Model and how it interfaces with the Docker engine
and network and IPAM drivers]() |
[docs](https://success.docker.com/article/networking/)
- [Configure Docker to use external DNS]() |
[docs](https://gist.github.com/Evalle/7b21e0357c137875a03480428a7d6bf6)
- [Use Docker to load balance HTTP/HTTPs traffic to an application (Configure L7 load
balancing with Docker EE)]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/admin/configure/use-a-load-balancer/#configuration-examples)
- [Understand and describe the types of traffic that flow between the Docker engine,
registry, and UCP controllers]() |
[docs](https://success.docker.com/article/networking/)
- [Deploy a service on a Docker overlay network]() |
[docs](https://docs.docker.com/network/overlay/)
- Describe the difference between "host" and "ingress" port publishing mode ([Host](https://docs.docker.com/engine/swarm/services/#publish-a-services-ports-directly-on-the-swarm-node), [Ingress](https://docs.docker.com/engine/swarm/ingress/))

### Domain 5: Security (15% of exam)
- [Describe the process of signing an image]() |
[docs](https://docs.docker.com/engine/security/trust/content_trust/#push-trusted-content)
- [Demonstrate that an image passes a security scan]() |
[docs](https://docs.docker.com/docker-cloud/builds/image-scan/)
- [Enable Docker Content Trust]() |
[docs](https://docs.docker.com/engine/security/trust/content_trust/)
- [Configure RBAC in UCP]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/access-control/)
- [Integrate UCP with LDAP/AD]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/admin/configure/external-auth/)
- [Demonstrate creation of UCP client bundles]() |
[docs](https://blog.docker.com/2017/09/get-familiar-docker-enterprise-edition-client-bundles/)
- [Describe default engine security]() |
[docs](https://docs.docker.com/engine/security/security/)
- [Describe swarm default security]() |
[docs](https://docs.docker.com/engine/swarm/how-swarm-mode-works/pki/)
- [Describe MTLS]() |
[docs](https://diogomonica.com/2017/01/11/hitless-tls-certificate-rotation-in-go/)

### Domain 6: Storage and Volumes (10% of exam)
- [State which graph driver should be used on which OS]() |
[docs](https://docs.docker.com/engine/userguide/storagedriver/selectadriver/)
- [Demonstrate how to configure devicemapper]() |
[docs](https://docs.docker.com/engine/userguide/storagedriver/device-mapper-driver/)
- [Compare object storage to block storage, and explain which one is preferable when
available]() |
[docs](http://rancher.com/block-object-file-storage-containers/)
- [Summarize how an application is composed of layers and where those layers reside on
the filesystem]() |
[docs](https://medium.com/@jessgreb01/digging-into-docker-layers-c22f948ed612)
- [Describe how volumes are used with Docker for persistent storage]() |
[docs](https://docs.docker.com/engine/admin/volumes/volumes/)
- [Identify the steps you would take to clean up unused images on a filesystem, also on
DTR]() |
[docs](https://docs.docker.com/engine/reference/commandline/image_prune/)
- [Demonstrate how storage can be used across cluster nodes]() |
[docs](https://docs.docker.com/engine/extend/legacy_plugins/#volume-plugins)
- [Identity roles]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/access-control/permission-levels/#roles)
- [Describe the difference between UCP workers and managers]() |
[docs](https://docs.docker.com/datacenter/ucp/2.2/guides/architecture/)
- Describe process to use external certificates with UCP and DTR ([UCP](https://docs.docker.com/ee/ucp/), [DTR](https://docs.docker.com/ee/dtr/))
