all:
	mkdir -p /home/abbes/data/wordpress
	mkdir -p /home/abbes/data/mariadb
	sudo docker compose -f ./srcs/docker-compose.yaml up --build -d

down:
	sudo docker compose -f ./srcs/docker-compose.yaml down

clean:
	sudo docker system prune -af
	sudo docker volume rm srcs_mariadb_volume
	sudo docker volume rm srcs_wordpress_volume