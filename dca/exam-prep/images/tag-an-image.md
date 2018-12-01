## Tag an image

### Usage
`docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]`

### Examples
Tag an image referenced by ID
To tag a local image with ID “0e5574283393” into the “fedora” repository with “version1.0”:

`docker tag 0e5574283393 fedora/httpd:version1.0`

### Tag an image referenced by Name
To tag a local image with name “httpd” into the “fedora” repository with “version1.0”:

`docker tag httpd fedora/httpd:version1.0`

[docs](https://docs.docker.com/engine/reference/commandline/tag/)
