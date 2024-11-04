cf = -f deploy/docker/compose.yaml

# Run in docker

init: ## Initialize environement variables
	@if [ ! -f ./deploy/docker/.env ]; then \
		cp ./deploy/docker/.env.sample ./deploy/docker/.env; \
		echo "Adjust configuration in ./deploy/docker/.env"; \
	fi;
build: ## Build docker containers
	docker compose $(cf) build
up: init ## Start docker containers
	docker compose $(cf) up -d --remove-orphans
down: ## Stop docker containers
	docker compose $(cf) down
rebuild: ## Rebuild and start docker containers
	@make down
	@make build
	@make up

## Local development

clippy: ## Check syntax
	cargo clippy --all --all-features --tests -- -D warnings
hurl: ## Run hurl API testing on localhost installation
	hurl --variables-file=.\test\variables .\test\parcel_locker.hurl
help: ## Print this help
	@grep -E '^[a-zA-Z0-9_-]+:.*## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: \
	build \
	clippy \
	down \
	help \
	hurl \
	init \
	rebuild \
	up \
