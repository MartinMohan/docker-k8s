# Define variables
APP=mmhello

# Build the Docker image and tag for link to mikrok8s
docker:
	docker-compose up
#	docker build -t $(APP) .
#	@echo "build is exposed locally"
#	eval $(minikube -p minikube docker-env)
#	minikube ssh 'docker images' # Check minikube sees the docker image
#docker run -it -p 5000:5000 mmhello /bin/bash

#microk8s:
#	sudo microk8s start 

# eval will not work in Makefile
#minikube:
#	include setup_minikube.sh

#helm:
#	source setup_helm.sh

#all:
#	make helm
#	make minikube
#	make kubectl

#.PHONY: all

clean:
#	kubectl delete -f k8s-deployment.yaml
	docker system prune -a
	minikube delete
