# Example of MongoDB replication and sharding with Docker

## Prerequisites

+ Docker (get it [here](https://www.docker.com/get-started))
+ docker-compose (get it [here](https://docs.docker.com/compose/install/))

## Run the demo

Start the cluster
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

Start the replica set for shard1
```
make shard1

or

docker-compose up -d shard1a shard1b shard1c
docker-compose logs -f shard1a shard1b shard1c
```


Start the replica set for shard2
```
make shard2

or

docker-compose up -d shard2a shard2b shard2c
docker-compose logs -f shard2a shard2b shard2c
```

Start the replica set for the config server
```
make cfgsvr

or

docker-compose up -d cfgsvr1 cfgsvr2 cfgsvr3
docker-compose logs -f cfgsvr1 cfgsvr2 cfgsvr3
```

Start the routers
```
make mongos

or

docker-compose up -d mongos1 mongos2
docker-compose logs -f mongos1 mongos2
```

Stop the replica set for shard1
```
make stop_shard1

or

docker-compose stop shard1a shard1b shard1c
```

Stop the replica set for shard2
```
make stop_shard2

or

docker-compose stop shard2a shard2b shard2c
```

Stop the replica set for the config server
```
make stop_cfgsvr

or

docker-compose stop cfgsvr1 cfgsvr2 cfgsvr3
```

Stop the routers
```
make stop_mongos

or

docker-compose stop mongos1 mongos2
```

Configure the replica sets and sharded cluster
```
make bootstrap

or

docker exec shard1a mongo /home/mongo-scripts/primary/shard1.js
docker exec shard2a mongo /home/mongo-scripts/primary/shard2.js
docker exec cfgsvr1 mongo /home/mongo-scripts/primary/cfgsvr.js
docker exec mongos1 mongo /home/mongo-scripts/primary/mongos.js
```
