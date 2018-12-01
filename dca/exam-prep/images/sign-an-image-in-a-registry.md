## Sign an image in a registry

To sign an image, you can run:

* `export DOCKER_CONTENT_TRUST=1`
* `docker push <dtr-domain>/<repository>/<image>:<tag>`

This pushes the image to DTR and creates trust metadata. It also creates public and private key pairs to sign the trust metadata, and pushes that metadata to the Notary Server internal to DTR.

<img src="https://docs.docker.com/datacenter/dtr/2.4/guides/images/sign-an-image-2.svg" />

### Sign images that UCP can trust
With the command above, you can sign your DTR images, but UCP doesn’t trust them because it can’t tie the private key you’re using to sign the images to your UCP account.

To sign images in a way that UCP trusts them, you need to:

* Configure your Notary client
* Initialize trust metadata for the repository
* Delegate signing to the keys in your UCP client bundle

In this example we’re going to pull an NGINX image from Docker Store, re-tag it as `dtr.example.org/dev/nginx:1`, push the image to DTR and sign it in a way that is trusted by UCP. If you manage multiple repositories, you need to do the same procedure for every one of them.

[docs](https://docs.docker.com/datacenter/dtr/2.4/guides/user/manage-images/sign-images/)
