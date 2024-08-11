#!/bin/bash

docker build -t k-nginx:latest .

kubectl delete -f deployment.yaml

kubectl apply -f deployment.yaml
