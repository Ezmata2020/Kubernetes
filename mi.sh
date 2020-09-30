#How to Install Kubernetes with Minikube on Ubuntu 20.04 / 18.04
#Install VirtualBox:
sudo apt-get install -y virtualbox

#Install kubelet:
curl -Lo kubectl https://storage.googleapis.com/kubern...
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl

curl -Lo minikube https://github.com/kubernetes/minikub...
chmod +x minikube
sudo mv minikube /usr/local/bin/

minikube start --vm-driver virtualbox

#Show minikube cluster IP
minikube ip

kubectl get pods --all-namespaces
#kubectl config view
minikube addons list
