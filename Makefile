.PHONY: default
default:

.PHONY: up
up: down
	docker-compose up -d
	docker-compose logs -f dbcluster

.PHONY: down
down:
	docker-compose down