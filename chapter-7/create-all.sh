#!/bin/bash
set -x
source ~/.bashrc
microk8s kubectl create deployment alpaca-prod --image=gcr.io/kuar-demo/kuard-amd64:blue --port=8080
microk8s kubectl scale deployment alpaca-prod --replicas 3
microk8s kubectl expose deployment alpaca-prod
microk8s kubectl create deployment bandicoot-prod --image=gcr.io/kuar-demo/kuard-amd64:green --port=8080
microk8s kubectl scale deployment bandicoot-prod --replicas 2
microk8s kubectl expose deployment bandicoot-prod
