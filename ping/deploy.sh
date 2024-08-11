#!/bin/bash

docker build -t k-ping-app:latest .

kubectl delete -f deployment.yaml

kubectl apply -f deployment.yaml
