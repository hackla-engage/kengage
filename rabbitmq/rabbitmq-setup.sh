#!/bin/bash
microk8s.helm install --name engage stable/rabbitmq -f ../../config/rabbitmq-values.yaml
