kubectl exec -it $(kubectl get pod | awk '/influxdb/ && !/NAME/ {print $1}') -c kapacitor -- sh -c 'kapacitor define example-task -type batch -tick /home/example.tick -dbrp source-db.source-rp'
kubectl exec -it $(kubectl get pod | awk '/influxdb/ && !/NAME/ {print $1}') -c kapacitor -- sh -c 'kapacitor enable example-task'

kubectl exec -it $(kubectl get pod | awk '/influxdb/ && !/NAME/ {print $1}') -c kapacitor -- kapacitor list tasks
