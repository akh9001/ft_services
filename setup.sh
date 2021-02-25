minikube delete
# minikube start --driver=virtualbox
minikube start --memory='3072' --driver=virtualbox
eval $(minikube docker-env)

echo "Starting metalLB"
minikube addons metrics-server
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f metallb/metallb.yaml 

echo "Building images"

docker build -t  nginx_image nginx/
docker build -t  mysql_image mysql/
docker build -t  wordpress_image wordpress/
docker build -t  phpmyadmin_image phpmyadmin/

echo "Applying pods"

kubectl apply -f nginx/nginx.yaml
kubectl apply -f mysql/mysql.yaml
kubectl apply -f wordpress/wordpress.yaml
kubectl apply -f phpmyadmin/phpmyadmin.yaml

minikube dashboard