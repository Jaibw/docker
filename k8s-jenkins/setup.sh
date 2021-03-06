sudo apt update
sudo apt -y install curl apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt -y install vim git curl wget kubectl
sudo apt-mark hold kubectl
mkdir ~/.kube 
wget https://raw.githubusercontent.com/Jaibw/docker/main/k8s-jenkins/config
mv config .kube/
kubectl get nodes
