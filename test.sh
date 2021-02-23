#!bin/bash
kubectl delete -f $1/$1.yaml
docker build -t $1_image $1/
kubectl apply -f $1/$1.yaml