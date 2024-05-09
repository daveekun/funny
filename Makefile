COMPOSE = ./srcs/compose.yaml
NAME=Inception
DATA_DIR = /Users/dhorvath/data
WP_DIR = /Users/dhorvath/data/wordpress
DB_DIR = /Users/dhorvath/data/mariadb

all: $(NAME)

$(NAME): $(WP_DIR) | $(DB_DIR)
	docker compose -f $(COMPOSE) up -d

$(DATA_DIR):
	mkdir -p $@

$(WP_DIR): $(DATA_DIR)
	mkdir -p $@

$(DB_DIR):
	mkdir -p $@

clean:
	docker compose -f $(COMPOSE) down --rmi all -v

fclean: clean
	rm -rf $(DATA_DIR)

re: fclean all

restart:
	docker compose -f $(COMPOSE) restart

prune:
	docker system prune -f