#/bin/bash

kubectl create ns influx
kubectl config set-context influx@kubernetes --cluster=minikube --user=minikube --namespace=influx
kubectl config use-context influx@kubernetes
kubectl apply -f volume-influx.yaml -f secret.yaml -f config-telegraf.yaml 
kubectl apply -f deploy-influx.yaml -f deploy-telegraf.yaml -f deploy-grafana.yaml 
sh svc.sh