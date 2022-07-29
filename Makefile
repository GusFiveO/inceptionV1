DOCKER = docker-compose

HOME = /home/alorain

all:
	$(DOCKER) -f srcs/docker-compose.yml build
	$(DOCKER) -f srcs/docker-compose.yml up

stop:
	$(DOCKER) -f srcs/docker-compose.yml stop

clean:
	docker system prune -a -f

.PHONY: all stop clean

