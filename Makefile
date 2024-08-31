cf = -f deploy/docker/compose.yaml

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

## Local development

clippy:
	cargo clippy --all --all-features --tests -- -D warnings
hurl:
	hurl --variables-file=.\test\variables .\test\parcel_locker.hurl
