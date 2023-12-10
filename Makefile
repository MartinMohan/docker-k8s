# Define variables
IMAGE_NAME=hello-world-image

# Build the Docker image and tag for link to mikrok8s
build:
	docker build -t $(IMAGE_NAME) .
	docker tag  $(IMAGE_NAME) localhost:32000/$(IMAGE_NAME)
	docker push localhost:32000/$(IMAGE_NAME)

# Deploy to Kubernetes
deploy: build
	kubectl apply -f k8s-deployment.yaml

# Shortcut to build and deploy
all: deploy

# Delete the deployment
clean:
	kubectl delete -f k8s-deployment.yaml
