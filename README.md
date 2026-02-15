# DevOps CI/CD Pipeline & Kubernetes Deployment

## Objective
Demo project showing end-to-end DevOps workflow:
- CI/CD automation with Jenkins
- Containerization with Docker
- Kubernetes deployment
- Infrastructure as Code (Terraform)
- Configuration management (Ansible)
- Monitoring with Prometheus & Grafana

## Tech Stack
AWS | Terraform | Ansible | Jenkins | Docker | Kubernetes | Prometheus | Grafana | Bash

## Project Structure
- `jenkins/Jenkinsfile` – Jenkins pipeline stages
- `terraform/main.tf` – Infrastructure provisioning
- `ansible/playbook.yml` – Server configuration
- `docker/Dockerfile` – Sample app image
- `k8s/deployment.yaml` & `service.yaml` – Kubernetes deployment
- `monitoring/` – Prometheus and Grafana setup
- `scripts/setup.sh` – Bash automation script

## Usage
1. Clone the repository
2. Run Terraform to provision infrastructure:  
   `cd terraform && terraform init && terraform apply`
3. Run Ansible playbook to configure servers:  
   `ansible-playbook ansible/playbook.yml -i hosts`
4. Build Docker image and push to registry:  
   `docker build -t devops-demo-app docker/`
5. Deploy to Kubernetes cluster:  
   `kubectl apply -f k8s/`
6. Access Prometheus & Grafana dashboards to monitor workloads
