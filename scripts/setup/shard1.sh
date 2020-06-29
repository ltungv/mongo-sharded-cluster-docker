#!/bin/sh

mongod --bind_ip_all --shardsvr --replSet shard1rs --port 27017;
mongo /home/mongo-scripts/setup/shard.js;