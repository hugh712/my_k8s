#!/bin/bash
set -x
source ~/.bashrc
microk8s kubectl create deployment be-default --image=gcr.io/kuar-demo/kuard-amd64:blue --replicas=3 --port=8080
#microk8s kubectl scale deployment alpaca-prod --replicas 3
microk8s kubectl expose deployment be-default
microk8s kubectl create deployment alpaca --image=gcr.io/kuar-demo/kuard-amd64:green --replicas=3 --port=8080
#microk8s kubectl scale deployment bandicoot-prod --replicas 2
microk8s kubectl expose deployment alpaca
microk8s kubectl create deployment bandicoot --image=gcr.io/kuar-demo/kuard-amd64:purple --replicas=3 --port=8080
microk8s kubectl expose deployment bandicoot
microk8s kubectl get services -o wide
