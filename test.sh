#!bin/bash
eval $(minikube docker-env)
kubectl delete -f $1/$1.yaml
docker rmi -f $1_image
docker build -t $1_image $1/ --no-cache
kubectl apply -f $1/$1.yaml