#!/bin/bash
echo "Creating ingress service structure..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml
echo "Waiting for the ingress creation to finish..."
sleep 60s
echo "Deploying main services..."
kubectl apply -f k8s-ingress.yaml
