#!/usr/bin/make -f

.PHONY: connect
connect:
	docker-compose exec kubectl bash

.PHONY: build
build:
	COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build --force-recreate -d

.PHONY: stop
stop:
	docker-compose down
