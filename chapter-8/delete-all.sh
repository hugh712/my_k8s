#!/bin/bash

kubectl delete ingress host-ingress path-ingress simple-ingress
kubectl delete service alpaca bandicoot be-default
kubectl delete deployment alpaca bandicoot be-default

