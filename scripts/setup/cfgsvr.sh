#!/bin/sh

mongod --bind_ip_all --configsvr --replSet cfgsvrrs --port 27017;