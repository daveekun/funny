COMPOSE = ./srcs/compose.yaml

all:
	docker compose -f $(COMPOSE) up -d

clean:
	docker compose -f $(COMPOSE) down --rmi all -v

restart:
	docker compose -f $(COMPOSE) restart