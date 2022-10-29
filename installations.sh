#!bin/bash

# Installation of minikube, kubectl, kubens, helm

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube

curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl

curl -LO https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256

echo "$(cat kubectl.sha256)  kubectl" | sha256sum –check

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl version --client

sudo ln -s /usr/local/kubectx/kubens /usr/local/bin/kubens

curl -LO https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

chmod 700 get_helm.sh  #(Might have to change file to get-helm-3 per above )

./get_helm.sh #(Might have to change file to get-helm-3 per above )

sudo apt install fzf