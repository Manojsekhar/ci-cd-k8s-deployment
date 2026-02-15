#!/bin/bash
echo "Setting up environment..."
terraform init
terraform apply -auto-approve
ansible-playbook ansible/playbook.yml -i hosts
docker build -t devops-demo-app docker/
kubectl apply -f k8s/
echo "Setup complete. Check Prometheus & Grafana dashboards."
