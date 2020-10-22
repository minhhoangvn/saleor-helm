# Helm Chart for Saleor

## Introduction

This [Helm](https://github.com/kubernetes/helm) chart installs [[Saleor Commerce Application]](https://github.com/mirumee/saleor) in a Kubernetes cluster.

## Prerequisites

- Kubernetes cluster 1.17+ (You can choose a list of options below to set up a Kubernetes Cluster)
  1. Enable Kubernetes in Docker Desktop[[Installation Guide]](https://birthday.play-with-docker.com/kubernetes-docker-desktop/)
  2. Minikube[[Installation Guide]](https://kubernetes.io/vi/docs/tasks/tools/install-minikube/)
  3. Kubeadm[[Installation Guide]](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)
- Helm 3.0.0+[[Installation Guide]](https://helm.sh/docs/intro/install/)
- PV provisioner support in the underlying infrastructure or NFS server
  1. Install & Set up NFS server[[Installation Guide]](https://www.tutorialspoint.com/how-to-install-and-configure-nfs-server-on-linux)

## Installation

### 1. Clone this repository

```
git clone https://github.com/minhhoangvn/saleor-helm.git
cd saleor-helm
```

### 2. Edit installation value in values.yaml

**If you deploy this chart in your local machine you MUST:**

1. Set up an NFS server and configure the server and path values in 'nfs-client-provisioner' section in values.yaml file

2. Configure an "externalIPs" value in "nginx-ingress-controller" section in file values.yaml to your current local machine private IP Address[[Get your current IP]](https://www.cyberciti.biz/faq/how-to-find-my-public-ip-address-from-command-line-on-a-linux/)

**If you want to you external Postgresql and Redis you MUST:**

1. Configure "enabled" in both "postgresql" and "redis" section to false
2. Configure "databaseUrl" and "redisUrl" values in "saleor" section

### 3. Install Saleor chart

```
helm install saleor ./
```

### 4. Edit your hosts file to add the list of private domains below[[Installation Guide]](https://www.tecmint.com/setup-local-dns-using-etc-hosts-file-in-linux/)

1. saleor.testing.coe.com
2. saleor-dashboard.testing.coe.com
3. saleor-storefront.testing.coe.com

![Home](/images/1.png)
![GraphQL-Playground](/images/2.png)
![Storefront](/images/3.png)
![Dashboard](/images/2.png)
