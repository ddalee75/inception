SRC = ./srcs/docker-compose.yml
NAME = Inception

all: $(NAME)

$(NAME):
	mkdir -p /home/chilee/website
	mkdir -p /home/chilee/mariadb
	docker-compose -f ${SRC} up --build -d 

clean:
	docker-compose -f ${SRC} stop

fclean: clean
	docker-compose -f ${SRC} down


prune: fclean
	docker image prune -a
	docker system prune
	sudo rm -rf /home/chilee/website
	sudo rm -rf /home/chilee/website

re: fclean all

setup:
	sudo chmod 777 /var/run/docker.sock
	echo "127.0.0.1 chilee.42.fr" | sudo tee -a /etc/hosts

.PHONY: all clean flcean re setup


