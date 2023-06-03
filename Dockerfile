FROM openjdk:8-jdk-alpine

# Copy ZooKeeper package to the container
COPY apache-zookeeper-3.8.1-bin.tar.gz /tmp/

# Install ZooKeeper
RUN apk update && \
    apk add --no-cache tar bash && \
    tar -xzf /tmp/apache-zookeeper-3.8.1-bin.tar.gz -C /opt && \
    mv /opt/apache-zookeeper-3.8.1-bin /opt/zookeeper && \
    rm -rf /tmp/apache-zookeeper-3.8.1-bin.tar.gz

# Set environment variables
ENV ZOOKEEPER_HOME=/opt/zookeeper
ENV PATH=$PATH:$ZOOKEEPER_HOME/bin

# Expose the necessary ports
EXPOSE 2181

# Set the working directory
WORKDIR $ZOOKEEPER_HOME

# Copy the default configuration file
COPY zoo.cfg $ZOOKEEPER_HOME/conf/

# Start ZooKeeper
CMD ["./bin/zkServer.sh", "start-foreground"]
