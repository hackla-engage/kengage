#!/bin/bash

microk8s.helm3 install engage-redis stable/redis --values ../../config/redis-values.yaml
