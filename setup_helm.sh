# Do not 
APP="mmhello"
minikube start
eval $(minikube -p minikube docker-env)
docker build -t ${APP} .
minikube ssh 'docker images' # Check minikube sees the docker image
helm install test1 ./mmhello-chart
minikube dashboard &
helm list
minikube service list
