# Golang + Kafka example


Before running this, you should check your private IP (docker host IP) to make Kafka running.

In unix-based system you can check it using `ifconfig -a`. There you can find your local IP.


## Running Kafka in Cluster Mode

Run with docker compose:

```
MY_IP=your-ip docker-compose -f docker-compose-kafka.yml up
```

After that, create a topic "foo" using this command:

```
docker run --net=host --rm confluentinc/cp-kafka:5.0.0 kafka-topics --create --topic foo --partitions 4 --replication-factor 2 --if-not-exists --zookeeper localhost:32181
```

It will create the topic "foo" with 4 partitions and replication factors = 2.

## Build and run Golang application inside Docker

You can try this project without installing Golang, just run:

```
MY_IP=your-ip docker-compose up --build
```

It will build and run the API and 2 Worker inside the docker.
