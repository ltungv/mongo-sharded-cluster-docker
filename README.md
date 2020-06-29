# Example of MongoDB replication and sharding with Docker

## Prerequisites

+ Docker (get it [here](https://www.docker.com/get-started))
+ docker-compose (get it [here](https://docs.docker.com/compose/install/))

## Terminologies

### Replicaset
![Replica set](https://docs.mongodb.com/manual/_images/replica-set-read-write-operations-primary.bakedsvg.svg)

### Sharding
![Sharded cluster](https://docs.mongodb.com/manual/_images/sharded-cluster-production-architecture.bakedsvg.svg)

## Basics

Start the cluster; when finished initializing 2 mongos instances will be exposed on port 3001 and 3002 of the host machine
```
make up

or

docker-compose up
```

Shut down the cluster and clean up all data
```
make down

or

docker-compose down
```