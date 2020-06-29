#!/bin/sh

mongos --configdb cfgsvrrs/cfgsvr1:27017,cfgsvr2:27017,cfgsvr3:27017 --port 27017;