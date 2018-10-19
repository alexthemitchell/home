CONTAINER_NAME=home

all: container run

container:
	docker build -t $(CONTAINER_NAME) .

run:
	docker run --privileged=true -it $(CONTAINER_NAME) /bin/bash
