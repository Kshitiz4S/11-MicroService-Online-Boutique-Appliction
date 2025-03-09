KIND clustar setup

1) Installing KIND and kubectl

sudo chmod +x kind-cluster.sh
./kind-cluster.sh

2) Setting Up KIND Cluster

kind create cluster --config kind-cluster-config.yaml --name kind-cluster

3) Deleting the KIND Cluster

kind delete cluster --name kind-cluster
