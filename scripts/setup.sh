#!/bin/sh

until mongo --host shard1a /home/scripts/mongo/primary/shard1.js; do
    sleep 1;
done;

until mongo --host shard2a /home/scripts/mongo/primary/shard2.js; do
    sleep 1;
done;

until mongo --host cfgsvr1 /home/scripts/mongo/primary/cfgsvr.js; do
    sleep 1;
done;

until mongo --host mongos1 /home/scripts/mongo/primary/mongos.js; do
    sleep 1;
done;