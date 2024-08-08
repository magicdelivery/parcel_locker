cf = -f deploy/docker/compose.yaml

hurl:
	hurl --variables-file=.\test\variables .\test\parcel_locker.hurl
build:
	docker compose $(cf) build
up:
	docker compose $(cf) up -d
down:                       
	docker compose $(cf) down