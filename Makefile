# Define variables
APP=mmhello

# Build the Docker image and tag for link to mikrok8s
#docker:
#	docker build -t $(APP) .
#	eval $(minikube -p minikube docker-env)
#	minikube ssh 'docker images' # Check minikube sees the docker image
#docker run -it -p 5000:5000 mmhello /bin/bash

#microk8s:
#	sudo microk8s start 

minikube:
	minikube start 
	eval $(minikube -p minikube docker-env)
	docker build -t $(APP) .
	minikube ssh 'docker images' # Check minikube sees the docker image
	kubectl apply -f k8s-deployment.yaml
	minikube dashboard &
#	eval $(minikube docker-env)

#kubectl:
#	kubectl apply -f k8s-deployment.yaml
#	minikube dashboard &
#	kubectl create deployment hello-node --image=registry.k8s.io/e2e-test-images/agnhost:2.39 -- /agnhost netexec --http-port=8080

helm:
	minikube start 
	eval $(minikube -p minikube docker-env)
	docker build -t $(APP) .
	minikube ssh 'docker images' # Check minikube sees the docker image
	helm install test1 ./mmhello-chart

all:
	make minikube
#	make docker
	make kubectl
#	make helm

.PHONY: all

clean:
#	kubectl delete -f k8s-deployment.yaml
	docker system prune -a
	minikube delete
