#! /bin/bash

# Start the minikube and check the status
minikube start
minikube status
minikube version

# Use local image instead of pulling externally
eval $(minikube docker-env)

# Build docker image
docker build -t k8s-demo app/.

# Get the minikube ip address
minikube ip

# Run the docker image
docker run -p 8090:80 k8s-demo:latest

# Create a deployment
kubectl run app-deployment-cmd --image=k8s-demo --port=80 --image-pull-policy=Never

# Expose the deployment as service
kubectl expose deployment app-deployment-cmd --type=NodePort

# Access the service
minikube service app-deployment-cmd --url

# Do the same with yaml files
kubectl create -f k8s-resources.yaml

# View the pods, deployments, service
kubectl get pods
kubectl get deployments
kubectl get service

# Scale the deployment
kubectl scale deployment/app-deployment-yaml --replicas=2

# Describe the pods
kubectl describe pod <pod-name>
kubectl describe deployment <deployment-name>
kubectl describe service <service-name>