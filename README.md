##Zookeeper usage of docker

1. Clone this repo and run following commands after making sure docker daemon is running

```
docker build -t my-zookeeper-image .
docker run -d --name my-zookeeper-container my-zookeeper-image
```

2. Docker desktop could also be used for running the docker container

List all the container and and identify the container `my-zookeeper-container` log in to 
```
docker ps
```

3. Once you have identified the container, use the docker exec command followed by the container ID or name and the shell you want to use
```
docker exec -it <container_id_or_name> /bin/bash
```

4. You don't need to start the Zookeeper service, it should have been already started.
5. To confirm the point 4. run
```
cd /opt/zookeeper/bin/
./zkCli.sh
```