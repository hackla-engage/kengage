#!/bin/bash
microk8s.helm3 repo add elastic https://helm.elastic.co
microk8s.helm3 repo update
microk8s.helm3 install engage-elastic elastic/elasticsearch -f ../../config/elastic-values.yaml
