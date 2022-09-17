# IaC-CICD

This repo creates an environment for me to test various IaC and CI/CD workflows I have in mind.

## Components:
  - Gitlab service: configured using included docker-compose outside Kubernetes cluster on a KVM VM
  - APP: Simple containerize flask app with APM and logs enabled
  - Orchestration: Kubernetes cluster already configured with vagrant nodes on top of KVM hypervisor
  - Bash script to install vagrant and KVM included
  - Vagrant script files included to create Kubernetes nodes using vagrant([Take a look my gist](https://gist.github.com/Behzadb/dc3a69635b1b18e3bcaf6ac18bac18b4))
  - Kubernetes Cluster provisioned using [kubespray](https://github.com/kubernetes-sigs/kubespray) ansible-playbook 
