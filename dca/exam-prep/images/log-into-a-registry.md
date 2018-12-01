## Log into a registry

### Usage
`docker login [OPTIONS] [SERVER]`

### Login to a self-hosted registry
If you want to login to a self-hosted registry you can specify this by adding the server name.

`docker login localhost:8080`

### Provide a password using STDIN
To run the docker login command non-interactively, you can set the --password-stdin flag to provide a password through STDIN. Using STDIN prevents the password from ending up in the shell’s history, or log-files.

The following example reads a password from a file, and passes it to the docker login command using STDIN:

`cat ~/my_password.txt | docker login --username foo --password-stdin`

[docs](https://docs.docker.com/engine/reference/commandline/login/#parent-command)
