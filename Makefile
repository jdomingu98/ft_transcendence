up:
	docker-compose up --build

down:
	docker-compose down

clear:
	docker-compose down --volumes
	yes | docker system prune -a

re: clear up