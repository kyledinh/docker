## Using this image to use CertBot

* `docker run -it --rm --name certbot kyledinh/certbot`
* `certbot certonly --manual --preferred-challenges dns -d <domain>`
* add a `TEXT` record to your DNS record with instruction from the command 
* from host `docker cp certbot:/etc/letsencrypt .`

## References

* https://certbot.eff.org/docs/using.html#manual
