cf = -f deploy/docker/compose.yaml

hurl:
	hurl --variables-file=.\test\variables .\test\parcel_locker.hurl
build:
	docker compose $(cf) build
up:
	docker compose $(cf) up -d --remove-orphans
down:                       
	docker compose $(cf) down
rebuild: ## Rebuild and start docker containers
	@make down
	@make build
	@make up