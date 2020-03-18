#!/bin/bash
helm install nginx-ingress stable/nginx-ingress --set controller.publishService.enabled=true --set controller.service.type=NodePort

# Requires some time before pods are up and running
pod0=$(microk8s.kubectl get pod -l app=nginx-ingress -o jsonpath="{.items[0].metadata.name}")
pod1=$(microk8s.kubectl get pod -l app=nginx-ingress -o jsonpath="{.items[1].metadata.name}")
microk8s.kubectl wait --for condition=ready pods/$pod0
microk8s.kubectl wait --for condition=ready pods/$pod1
