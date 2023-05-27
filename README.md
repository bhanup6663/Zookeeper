# clone this repo and run following commands after making sure docker daemon is running

```
docker build -t my-zookeeper-image .
docker run -d --name my-zookeeper-container my-zookeeper-image
```

Docker desktop could also be used for running the docker container

List all the container and and identify the container `my-zookeeper-container` log in to 
```
docker ps
```

Once you have identified the container, use the docker exec command followed by the container ID or name and the shell you want to use
```
docker exec -it zookeper /bin/bash
```