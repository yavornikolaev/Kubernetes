#!/bin/bash

#Start minikube

#minikube status

minikube_start=$(minikube start)
sleep 60
echo $minikube_start

minikube dashboard &

sleep 15

kubectl proxy --address='0.0.0.0' --disable-filter=true
