#!/bin/bash
helm repo add elastic https://helm.elastic.co
helm repo update
helm install elasticsearch elastic/elasticsearch -f ../../config/elastic-values.yaml
