# Introduction:   DO NOT USE STILL IN DEVELOPMENT
Simple example to help learn k8s.  
   
# Prerequisites  
microk8s and docker should already be installed.  
## Is docker installed?  
docker image ls  
## Is microk8s installed?   
sudo microk8s start  
sudo microk8s kubectl get nodes  

# Step by step guide  
## make   
1. File Dockerfile is used to create hello-world-image. This image contains a simple hello_world.py program.   
2. `make` calls 'docker build -t hello-world-image'  
  
## make deploy   
1.  The file k8s-deployment.yaml defines 2 containers containing image hello-world-image.  
2. `make deploy` calls 'kubectl apply -f k8s-deployment.yaml'  
  
# Some of the main kubectl commands that you should become familiar with:  
====================================================  
Get Information About Cluster Resources:  
kubectl get pods - List all pods in the default namespace.  
kubectl get services - List all services in the default namespace.  
kubectl get deployments - List all deployments in the default namespace.  
kubectl get nodes - List all nodes in the cluster.  
  
Create and Manage Kubernetes Resources:  
kubectl apply -f [file.yaml] - Apply a configuration to a resource from a file.  
kubectl delete -f [file.yaml] - Delete resources from a file.  
kubectl create -f [file.yaml] - Create a resource from a file.  
  
Debugging and Diagnostics:  
kubectl logs [pod-name] - Print the logs for a container in a pod.  
kubectl exec -it [pod-name] -- /bin/bash - Execute an interactive bash shell on a selected pod.  
kubectl describe pod/service/deployment [name] - Show detailed information about a specific pod/service/deployment.  
  
Configurations and Contexts:  
kubectl config view - View Kubernetes configuration files.  
kubectl config current-context - Display the current-context.  
kubectl config use-context [context-name] - Switch to another context.  
  
Working with Namespaces:  
kubectl get namespaces - List all namespaces in the cluster.  
kubectl get pods --namespace=[namespace] - List pods in a specific namespace.  
  
Scaling and Managing Applications:  
kubectl scale deployment [deployment-name] --replicas=[number] - Scale a deployment to a specific number of replicas.  
kubectl rollout status deployment/[deployment-name] - Get the status of a deployment rollout.  
kubectl rollout undo deployment/[deployment-name] - Roll back to the previous deployment.  
  
Interacting with the Cluster:  
kubectl cluster-info - Display addresses of the master and services.  
kubectl top pod - Display resource (CPU/memory) usage of pods.  
  
Advanced Commands:  
kubectl port-forward [pod-name] [local-port]:[pod-port] - Forward one or more local ports to a pod.  
kubectl proxy - Run a proxy to the Kubernetes API server.  
