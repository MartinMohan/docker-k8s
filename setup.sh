APP=mmhello
minikube start
eval $(minikube -p minikube docker-env)
docker build -t ${APP} .
minikube ssh 'docker images' # Check minikube sees the docker image

