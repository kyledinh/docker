## Configure logging drivers (splunk, journald, etc)

* config (logging) - `/etc/docker/daemon.json`

* `docker info | grep 'Logging Driver'``
```
Logging Driver: json-file
```

### Configure the logging driver for a container
When you start a container, you can configure it to use a different logging driver than the Docker daemon’s default, using the --log-driver flag. If the logging driver has configurable options, you can set them using one or more instances of the --log-opt <NAME>=<VALUE> flag. Even if the container uses the default logging driver, it can use different configurable options.

The following example starts an Alpine container with the none logging driver.

* `docker run -it --log-driver none alpine ash`

To find the current logging driver for a running container, if the daemon is using the json-file logging driver, run the following docker inspect command, substituting the container name or ID for <CONTAINER>:

```
$ docker inspect -f '{{.HostConfig.LogConfig.Type}}' <CONTAINER>
json-file
```

### Supported logging drivers
The following logging drivers are supported. See the link to each driver’s documentation for its configurable options, if applicable. If you are using logging driver plugins, you may see more options.

| Driver	| Description |
|---------|-------------|
| none	| No logs are available for the container and docker logs does not return any output. |
| json-file	The logs are formatted as JSON. The default logging driver for Docker.|
| syslog	| Writes logging messages to the syslog facility. The syslog daemon must be running on the host machine.|
| journald	| Writes log messages to journald. The journald daemon must be running on the host machine.|
| gelf	| Writes log messages to a Graylog Extended Log Format (GELF) endpoint such as Graylog or Logstash.|
| fluentd	| Writes log messages to fluentd (forward input). The fluentd daemon must be running on the host| machine.|
| awslogs	| Writes log messages to Amazon CloudWatch Logs.|
| splunk	| Writes log messages to splunk using the HTTP Event Collector.|
| etwlogs	| Writes log messages as Event Tracing for Windows (ETW) events. Only available on Windows| platforms.|
| gcplogs	| Writes log messages to Google Cloud Platform (GCP) Logging.|
| logentries	| Writes log messages to Rapid7 Logentries. |


[docs](https://docs.docker.com/config/containers/logging/configure/)
