#!/bin/sh

kubectl apply --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/v0.13.0/deploy/manifests/00-crds.yaml
kubectl create namespace cert-manager
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install cert-manager --namespace cert-manager --version v0.13.0 jetstack/cert-manager
kubectl create -f prod-issuer.yaml
kubectl create -f backend-cert.yaml 
