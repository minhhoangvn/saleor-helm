#!/bin/sh
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
helm install nfs-client -f ./nfs-client-values.yaml stable/nfs-client-provisioner --version 1.2.9 --wait --timeout 60000s
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install postgresql -f postgresql-values.yaml bitnami/postgresql --version 9.8.2 --wait --timeout 60000s
helm install saleor ./saleor --wait --timeout 60000s