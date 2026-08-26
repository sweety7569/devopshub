#!/bin/bash

set -e

REPO_NAME="devopshub"

# Verify we're inside the correct repository
if [[ "$(basename "$PWD")" != "$REPO_NAME" ]]; then
    echo "Please run this script from the '$REPO_NAME' repository root."
    exit 1
fi

echo "Creating DevOps documentation directory structure..."

mkdir -p \
Linux \
App-Server-Web-Server \
Bash-Scripting \
Git-GitHub \
AWS/{Cloud-Introduction,Amazon-EC2,VPC,VPC-Peering,IAM,S3,Route53-CDN,CloudWatch-CloudTrail,Auto-Scaling-Groups,Load-Balancers,RDS,Lambda,API-Gateway,KMS,SQS,Amazon-MQ,Secrets-Manager,WAF,Systems-Manager/Parameter-Store,AWS-Architecture} \
Jenkins \
Docker \
ECS \
Terraform \
Kubernetes \
ArgoCD \
Jenkins-Pipeline \
Prometheus-Grafana \
Ansible


