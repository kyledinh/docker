## Configure the Docker daemon to start on boot

### Configure Docker to start on boot
Most current Linux distributions (RHEL, CentOS, Fedora, Ubuntu 16.04 and higher) use systemd to manage which services start when the system boots. Ubuntu 14.10 and below use upstart.

systemd
* `sudo systemctl enable docker`
* `sudo systemctl disable docker`
To disable this behavior, use disable instead.

If you need to add an HTTP Proxy, set a different directory or partition for the Docker runtime files, or make other customizations, see customize your systemd Docker daemon options.

**upstart**
Docker is automatically configured to start on boot using upstart. To disable this behavior, use the following command:
* `echo manual | sudo tee /etc/init/docker.override`

**chkconfig**
* `sudo chkconfig docker on`


[docs](https://docs.docker.com/install/linux/linux-postinstall/)

configure-the-docker-daemon-to-start-on-boot.md
