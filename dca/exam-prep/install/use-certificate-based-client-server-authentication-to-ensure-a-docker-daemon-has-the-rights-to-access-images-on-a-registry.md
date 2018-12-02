## Use certificate-based client-server authentication to ensure a Docker daemon has the rights to access images on a registry

```
/etc/docker/certs.d/        <-- Certificate directory
└── localhost:5000          <-- Hostname:port
   ├── client.cert          <-- Client certificate
   ├── client.key           <-- Client key
   └── ca.crt               <-- Certificate authority that signed
                                the registry certificate
```

### Creating the client certificates
Use OpenSSL’s genrsa and req commands to first generate an RSA key and then use the key to create the certificate.

```
$ openssl genrsa -out client.key 4096
$ openssl req -new -x509 -text -key client.key -out client.cert
```

[docs](https://docs.docker.com/engine/security/certificates/)


use-certificate-based-client-server-authentication-to-ensure-a-docker-daemon-has-the-rights-to-access-images-on-a-registry.md
