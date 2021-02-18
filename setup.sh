minikube delete
minikube start --driver=virtualbox
eval $(minikube docker-env)

echo "Starting metalLB"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f metallb/metallb.yaml 

echo "Building images"
docker build -t  nginx_image nginx/

echo "Applying pods"

kubectl apply -f nginx/nginx.yaml


minikube dashboard