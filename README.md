# Docker Redis Slave
A docker image for operating a Redis slave.

## Environment variables
The image expects two environment variables to allow the redis instance to connect to a master:

| Environment Variable      | Description                      | Default      |
| ------------------------- | -------------------------------- | ------------ |
| REDIS_MASTER_SERVICE_HOST | The DNS name of the redis master | redis-master |
| REDIS_MASTER_SERVICE_PORT | The TCP port of the redis master | 6379         |

## Usage
Simply run the container with the environment variables set like so:

```bash
$ docker run --name some-redis-slave -e REDIS_MASTER_SERVICE_HOST=redis-master -e REDIS_MASTER_SERVICE_PORT=6379 -d lushdigital/docker-redis-slave
```
