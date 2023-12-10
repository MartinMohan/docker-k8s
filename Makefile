# Define variables
IMAGE_NAME=hello-world-image

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Deploy to Kubernetes
deploy: build
	kubectl apply -f k8s-deployment.yaml

# Shortcut to build and deploy
all: deploy

# Delete the deployment
clean:
	kubectl delete -f k8s-deployment.yaml
