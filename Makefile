.PHONY: default
default:

.PHONY: up
up: down
	docker-compose up -d
	docker-compose logs -f

.PHONY: down
down:
	docker-compose down

.PHONY: bootstrap
bootstrap: bootstrap_shard1 bootstrap_shard2 bootstrap_cfgsvr bootstrap_mongos

.PHONY: bootstrap_shard1
bootstrap_shard1:
	docker exec shard1a mongo /home/mongo-scripts/primary/shard1.js

.PHONY: bootstrap_shard2
bootstrap_shard2:
	docker exec shard2a mongo /home/mongo-scripts/primary/shard2.js

.PHONY: bootstrap_cfgsvr
bootstrap_cfgsvr:
	docker exec cfgsvr1 mongo /home/mongo-scripts/primary/cfgsvr.js

.PHONY: bootstrap_mongos
bootstrap_mongos:
	docker exec mongos1 mongo /home/mongo-scripts/primary/mongos.js

.PHONY: shard1
shard1: stop_shard1
	docker-compose up -d shard1a shard1b shard1c
	docker-compose logs -f shard1a shard1b shard1c


.PHONY: shard2
shard2: stop_shard2
	docker-compose up -d shard2a shard2b shard2c
	docker-compose logs -f shard2a shard2b shard2c

.PHONY: cfgsvr
cfgsvr: stop_cfgsvr
	docker-compose up -d cfgsvr1 cfgsvr2 cfgsvr3
	docker-compose logs -f cfgsvr1 cfgsvr2 cfgsvr3

.PHONY: mongos
mongos: stop_mongos
	docker-compose up -d mongos1 mongos2
	docker-compose logs -f mongos1 mongos2

.PHONY: stop_shard1
stop_shard1:
	docker-compose stop shard1a shard1b shard1c

.PHONY: stop_shard2
stop_shard2:
	docker-compose stop shard2a shard2b shard2c

.PHONY: stop_cfgsvr
stop_cfgsvr:
	docker-compose stop cfgsvr1 cfgsvr2 cfgsvr3

.PHONY: stop_mongos
stop_mongos:
	docker-compose stop mongos1 mongos2
