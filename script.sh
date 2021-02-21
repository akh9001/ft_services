
#!/bin/bash
GOINFRE_PATH=$HOME/goinfre
BREW_PATH=$HOME/.brew
BREW_NEWPATH=$HOME/goinfre
GOINFRE_ORIGINE=/goinfre/$(whoami)
BREWCONFIGPATH=$HOME/.brewconfig.zsh
# Minikube paths
MINIKUBE_PATH=$HOME/.minikube
MINIKUBE_GF=$HOME/goinfre/.minikube
# Docker paths
DOCKER_PATH=$HOME/.docker
DOCKER_GF=$HOME/goinfre/.docker
# Kubernetes paths
K8S_PATH=$HOME/.kube
K8S_GF=$HOME/goinfre/.kube
# Remove old tools
rm -rf $HOME/.brew
rm -rf $HOME/.minikube
rm -rf $HOME/.kube
rm -rf $HOME/.docker
rm -rf $HOME/goinfre
if [ ! -d "$BREW_PATH" ]; then
	curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
	ln -s $GOINFRE_ORIGINE $GOINFRE_PATH
	cp -r $BREW_PATH $BREW_NEWPATH
	sed -i "" "s|\$HOME/.brew|\$HOME/goinfre/.brew|g" $BREWCONFIGPATH
	rm -rf $HOME/.brew
	source $HOME/.brewconfig.zsh
	brew update
fi
if [ ! -d $DOCKER_PATH ]; then
	brew install docker
	brew install docker-machine
	docker-machine create --driver virtualbox default
	cp -r $DOCKER_PATH $DOCKER_GF
	rm -rf $DOCKER_PATH
	ln -s $DOCKER_GF $DOCKER_PATH
fi
if [ ! -d $MINIKUBE_PATH ]; then
	brew install minikube
	minikube start
	cp -r $MINIKUBE_PATH $MINIKUBE_GF
	rm -rf $MINIKUBE_PATH
	ln -s $MINIKUBE_GF $MINIKUBE_PATH
	rm -rf $K8S_PATH
	ln -s $K8S_GF $K8S_PATH
fi
