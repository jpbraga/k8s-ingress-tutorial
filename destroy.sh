#!/bin/bash
echo "Destroying nginx-ingress controller..."
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml
echo "\n\nDestroying k8s deployments and services..."
kubectl delete -f k8s-ingress.yaml