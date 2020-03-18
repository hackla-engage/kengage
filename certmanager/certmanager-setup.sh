#!/bin/sh

microk8s.kubectl apply --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/v0.13.0/deploy/manifests/00-crds.yaml
microk8s.kubectl create namespace cert-manager
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install cert-manager --namespace cert-manager --version v0.13.0 jetstack/cert-manager
microk8s.kubectl create -f prod-issuer.yaml
microk8s.kubectl create -f backend-cert.yaml 
