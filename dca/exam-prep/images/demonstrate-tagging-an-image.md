## Demostrate tagging an images

In `/datawasher`

```
docker login
docker build -t datawasher .
docker tag datawasher kyledinh/datawasher:39
docker push kyledinh/datawasher:39
docker run --name dcwash -p 443:443 kyledinh/datawasher
```

[docs](https://docs.docker.com/engine/reference/commandline/tag/)
