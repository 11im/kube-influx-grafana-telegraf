kubectl expose deployment influxdb --port=8086 --target-port=8086 --protocol=TCP --type=ClusterIP
kubectl expose deployment grafana --type=LoadBalancer --port=3000 --target-port=3000 --protocol=TCP
kubectl expose deployment telegraf --port=8125 --target-port=8125 --protocol=UDP --type=NodePort
