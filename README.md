# clone this repo and run following commands after making sure docker daemon is running

```
docker build -t my-zookeeper-image .
docker run -d --name my-zookeeper-container my-zookeeper-image
```

Docker desktop could also be used for running the docker container
