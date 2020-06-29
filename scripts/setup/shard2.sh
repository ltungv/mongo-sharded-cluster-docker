#!/bin/sh

mongod --bind_ip_all --shardsvr --replSet shard2rs --port 27017;
mongo /home/mongo-scripts/setup/shard.js;